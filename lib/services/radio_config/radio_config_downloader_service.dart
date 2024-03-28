import 'dart:math';

import 'package:logger/logger.dart';

import '../../exceptions/mesh_radio_exception.dart';
import '../../models/radio_connector_state.dart';
import '../../protobufs/generated/meshtastic/config.pb.dart';
import '../../protobufs/generated/meshtastic/mesh.pb.dart';
import '../../providers/radio_config/extra_radio_config.dart';
import '../../providers/radio_config/radio_config_service.dart';
import '../interfaces/radio_reader.dart';
import '../queued_radio_writer.dart';

class RadioConfigDownloaderService {
  RadioConfigDownloaderService({
    required QueuedRadioWriter radioWriter,
    required RadioReader radioReader,
    required RadioConnectorState radioConnectorState,
    required RadioConfigService Function() radioConfigServiceProvider,
    required ExtraRadioConfig Function() extraRadioConfigProvider,
    required void Function(String?) disconnect,
    required void Function(void Function() cb) onDispose,
  })  : _radioWriter = radioWriter,
        _radioReader = radioReader,
        _radioConfigServiceProvider = radioConfigServiceProvider,
        _extraRadioConfigProvider = extraRadioConfigProvider,
        _radioConnectorState = radioConnectorState,
        _disconnect = disconnect {
    if (_radioConnectorState is Connected) {
      _radioConfigServiceProvider().clear();
      _requestConfig();
    }
    final subscription = _radioReader.onPacketReceived().listen(_processPacket);
    onDispose(subscription.cancel);
  }

  final QueuedRadioWriter _radioWriter;
  final RadioReader _radioReader;
  final RadioConnectorState _radioConnectorState;
  final RadioConfigService Function() _radioConfigServiceProvider;
  final ExtraRadioConfig Function() _extraRadioConfigProvider;
  final void Function(String?) _disconnect;
  final _random = Random();
  final _logger = Logger();
  int _myNodeNum = 0;
  int _wantConfigId = 0;

  RadioConfigService get _radioConfigService {
    return _radioConfigServiceProvider();
  }

  ExtraRadioConfig get _extraRadioConfig {
    return _extraRadioConfigProvider();
  }

  Future<void> _requestConfig() async {
    _wantConfigId = _random.nextInt(0xffffffff);
    //  for some systems, if the pin auth fails then the device will appear
    //  connected but the first write will fail.
    try {
      await _radioWriter.sendWantConfig(
        wantConfigId: _wantConfigId,
      );
    } on MeshRadioException catch (e) {
      _disconnect(e.msg);
      return;
    } catch (e) {
      _disconnect(null);
      return;
    }
    if (_radioReader is ForceReadableRadioReader) {
      _radioReader.forceRead();
    }
  }

  Future<void> _processPacket(FromRadio packet) async {
    final payloadVariant = packet.whichPayloadVariant();
    switch (payloadVariant) {
      case FromRadio_PayloadVariant.myInfo:
        await _processMyInfo(packet.myInfo);
      case FromRadio_PayloadVariant.nodeInfo:
        await _processNodeInfo(packet.nodeInfo);
      case FromRadio_PayloadVariant.config:
        await _processConfigPacket(packet.config);
      case FromRadio_PayloadVariant.configCompleteId:
        await _processConfigCompleteId(packet.configCompleteId);
      case _:
        break;
    }
  }

  Future<void> _processMyInfo(MyNodeInfo myInfo) async {
    _myNodeNum = myInfo.myNodeNum;
    _extraRadioConfig.setMyNodeNum(myInfo.myNodeNum);
    await _radioConfigService.setMyNodeNum(myInfo.myNodeNum);
  }

  Future<void> _processConfigPacket(Config config) async {
    final payloadVariant = config.whichPayloadVariant();
    if (payloadVariant == Config_PayloadVariant.lora) {
      final lora = config.lora;
      _extraRadioConfig.setHopLimit(lora.hopLimit);
      await _radioConfigService.setLoraConfig(lora, upload: false);
    }
  }

  Future<void> _processNodeInfo(NodeInfo nodeInfo) async {
    if (_myNodeNum == 0) {
      _logger.w('myNodeNum = 0 but received nodeInfo');
    }
    if (_myNodeNum != nodeInfo.num) {
      return;
    }
    await _radioConfigService.setMyNodeInfo(nodeInfo, upload: false);
    _radioConfigService.setHasOwnNodeInfo();
  }

  Future<void> _processConfigCompleteId(int configCompleteId) async {
    if (configCompleteId == _wantConfigId) {
      _radioConfigService.setConfigDownloaded();
    } else {
      _logger.i('Stale configCompleteId');
      _radioConfigServiceProvider().clear();
      await _requestConfig();
    }
  }
}
