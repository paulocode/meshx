import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/radio_connector_state.dart';
import '../../protobufs/generated/meshtastic/mesh.pb.dart';
import '../../protobufs/generated/meshtastic/portnums.pb.dart';
import '../services/radio_connector_service.dart';
import 'radio_reader.dart';

part 'radio_writer.g.dart';

@Riverpod(keepAlive: true)
QueuedRadioWriter radioWriter(RadioWriterRef ref) {
  final _logger = Logger();
  final queuedRadioWriter = QueuedRadioWriter();

  final connectorListener =
      ref.listen(radioConnectorServiceProvider, (_, connectorState) {
    if (connectorState is! Connected) {
      return;
    }

    switch (connectorState) {
      case BleConnected():
        queuedRadioWriter.setRadioWriter(
          BleRadioWriter(to: connectorState.bleCharacteristics.toRadio),
          isNewRadio: connectorState.isNewRadio,
        );
      case TcpConnected():
        throw UnimplementedError();
    }
  });

  final readerListener = ref.listen(radioReaderProvider, (_, next) {
    _logger.i('New reader');
    queuedRadioWriter.setRadioReader(next);
  });

  ref.onDispose(readerListener.close);
  ref.onDispose(connectorListener.close);

  return queuedRadioWriter;
}

// TODO create dart file for this class
abstract class RadioWriter {
  Future<void> write(List<int> value);
}

class BleRadioWriter implements RadioWriter {
  BleRadioWriter({required BluetoothCharacteristic to}) : _to = to;

  final BluetoothCharacteristic _to;

  @override
  Future<void> write(List<int> value) async {
    await _to.write(value);
  }
}

class QueuedRadioWriter {
  QueuedRadioWriter({Duration sendTimeout = const Duration(seconds: 30)})
      : _sendTimeout = sendTimeout {
    _currentPacketId = _random.nextInt(0xffffffff);
  }

  RadioWriter? _toRadio;
  StreamSubscription<FromRadio>? _packetSub;
  var _packetQueue = Queue<MeshPacket>();
  final _logger = Logger();
  final _random = Random();
  int _currentPacketId = 0;
  int _needAckPacketId = 0;
  var _packetAckCompleter = Completer<void>();
  final Duration _sendTimeout;

  void setRadioWriter(RadioWriter toRadio, {required bool isNewRadio}) {
    if (isNewRadio) {
      _logger.i('New radio, clearing packet queue');
      _clearPacketQueue();
    } else {
      _logger.i('Reconnected to same radio');
    }
    _toRadio = toRadio;
  }

  void setRadioReader(RadioReader radioReader) {
    _packetSub?.cancel();
    _packetSub = radioReader.onPacketReceived().listen(_packetListener);
  }

  int sendMeshPacket({
    required int to,
    int channel = 0,
    bool wantAck = false,
    required PortNum portNum,
    required Uint8List payload,
  }) {
    final id = _generatePacketId();
    final meshPacket = MeshPacket(
      to: to,
      hopLimit: 3,
      id: id,
      wantAck: wantAck,
      priority: MeshPacket_Priority.RELIABLE,
      channel: channel,
      decoded: Data(
        portnum: portNum,
        payload: payload,
      ),
    );
    _logger.i('Queueing MeshPacket...\n$meshPacket');
    if (_packetQueue.isEmpty) {
      _packetQueue.add(meshPacket);
      _startPacketQueue();
    } else {
      _packetQueue.add(meshPacket);
    }
    return id;
  }

  Future<void> sendWantConfig({required int wantConfigId}) async {
    final packet = ToRadio(wantConfigId: wantConfigId);
    _logger.i('Requesting config...\n$packet');
    await _toRadio?.write(packet.writeToBuffer());
  }

  int _generatePacketId() {
    const numPacketIds = (1 << 32) -
        1; // A mask for only the valid packet ID bits, either 255 or maxint

    _currentPacketId++;

    _currentPacketId =
        _currentPacketId & 0xffffffff; // keep from exceeding 32 bits

    // Use modulus and +1 to ensure we skip 0 on any values we return
    return (_currentPacketId % numPacketIds) + 1;
  }

  void _packetListener(FromRadio packet) {
    if (packet.whichPayloadVariant() == FromRadio_PayloadVariant.queueStatus) {
      _logger.i('QueueStatus: ${packet.queueStatus.meshPacketId}');
      if (!_packetAckCompleter.isCompleted &&
          _needAckPacketId == packet.queueStatus.meshPacketId) {
        _packetAckCompleter.complete();
      }
    }
  }

  Future<void> _startPacketQueue() async {
    final packetQueue = _packetQueue;
    _logger.i('Started packet queue');
    while (packetQueue.isNotEmpty) {
      _packetAckCompleter = Completer();
      final packet = packetQueue.first;
      try {
        _needAckPacketId = packet.id;
        await _toRadio?.write(ToRadio(packet: packet).writeToBuffer());
        await _packetAckCompleter.future.timeout(_sendTimeout);
        packetQueue.removeFirst();
        _logger.i('${packet.id} acknowledged');
      } catch (e) {
        _logger.w('Packet queue failed with $e');
        // possibly empty now due to async
        if (packetQueue.isNotEmpty) {
          packetQueue.removeFirst();
        }
      }
    }
    _logger.i('Packet queue empty');
  }

  void _clearPacketQueue() {
    if (!_packetAckCompleter.isCompleted) {
      _packetAckCompleter.complete();
    }
    _packetQueue.clear();
    _packetQueue = Queue<MeshPacket>();
  }
}
