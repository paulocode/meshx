import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../exceptions/mesh_radio_exception.dart';
import '../../models/radio_connector_state.dart';
import '../interfaces/radio_writer.dart';

class BleRadioWriter implements RadioWriter {
  BleRadioWriter(BleConnected connectorState)
      : _to = connectorState.bleCharacteristics.toRadio;

  final BluetoothCharacteristic _to;

  @override
  Future<void> write(List<int> value) async {
    try {
      await _to.write(value);
    } on FlutterBluePlusException catch (e) {
      throw MeshRadioException(msg: e.description);
    } catch (e) {
      throw const MeshRadioException();
    }
  }
}
