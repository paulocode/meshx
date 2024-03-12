import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:logger/logger.dart';
import 'package:platform/platform.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exceptions/mesh_radio_exception.dart';
import '../../models/mesh_radio.dart';
import '../../models/radio_connector_state.dart';
import '../wrap/flutter_blue_plus_mockable.dart';
import '../wrap/local_platform.dart';
import 'ble_characteristics_finder.dart';


part 'radio_connector.g.dart';

@Riverpod(keepAlive: true)
class RadioConnector extends _$RadioConnector {
  final _logger = Logger();
  late BleCharacteristicsFinder _bleCharacteristicsFinder;
  late LocalPlatform _localPlatform;
  late FlutterBluePlusMockable _flutterBluePlus;

  StreamSubscription<BluetoothConnectionState>? _bleConnectSubscription;

  @override
  RadioConnectorState build() {
    _bleCharacteristicsFinder = ref.watch(bleCharacteristicsFinderProvider);
    _localPlatform = ref.watch(localPlatformProvider);
    _flutterBluePlus = ref.watch(flutterBluePlusProvider);
    return Disconnected();
  }

  Future<void> disconnect() async {
    if (state is! Connected) {
      return;
    }
    final device = (state as Connected).device;
    await device.disconnect();
    state = Disconnected();
    await _bleConnectSubscription?.cancel();
  }

  Future<void> connect(MeshRadio radio) async {
    if (state is Connecting) {
      return;
    }
    
    // there doesn't seem to be a way to "test" if BT is on so just attempt call turnOn()
    // if failure an exception is thrown, if already on it just returns.
    await _flutterBluePlus.turnOn();

    final device = radio.device;
    final radioId = device.remoteId.str;

    state = Connecting(
      radioId: radioId,
    );

    try {
      await device.connect();
      if (_localPlatform.isAndroid) {
        await device.createBond();
      }

      state = Connected(
        radioId: radioId,
        bleCharacteristics:
            await _bleCharacteristicsFinder.findCharacteristics(device),
        device: device,
      );

      await _subscribeConnectionState(device);
    } catch (e, stackTrace) {
      _logger.e(stackTrace);
      if (e is MeshRadioException) {
        state = ConnectionError(msg: e.msg, radioId: radioId);
      } else {
        state = ConnectionError(msg: 'Unknown error', radioId: radioId);
      }
    }
  }

  Future<void> _subscribeConnectionState(BluetoothDevice device) async {
    await _bleConnectSubscription?.cancel();
    _bleConnectSubscription = device.connectionState.listen((event) {
      if (event == BluetoothConnectionState.disconnected) {
        state = Disconnected();
        _bleConnectSubscription?.cancel();
      }
    });
  }
}
