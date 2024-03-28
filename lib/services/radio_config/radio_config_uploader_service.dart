import 'package:logger/logger.dart';

import '../../protobufs/generated/meshtastic/admin.pb.dart';
import '../../protobufs/generated/meshtastic/config.pb.dart';
import '../../protobufs/generated/meshtastic/portnums.pb.dart';
import '../queued_radio_writer.dart';

class RadioConfigUploaderService {
  RadioConfigUploaderService({
    required QueuedRadioWriter radioWriter,
    required int Function() myNodeNum,
  })  : _radioWriter = radioWriter,
        _myNodeNum = myNodeNum;

  final QueuedRadioWriter _radioWriter;
  final  int Function() _myNodeNum;
  final _logger = Logger();

  Future<void> setLoraConfig({
    required Config_LoRaConfig loraConfig,
  }) async {
    final adminMessage = AdminMessage(
      setConfig: Config(
        lora: loraConfig,
      ),
    );

    _logger.i('Setting loraConfig:\n$loraConfig');

    _radioWriter.sendMeshPacket(
      to: _myNodeNum(),
      portNum: PortNum.ADMIN_APP,
      payload: adminMessage.writeToBuffer(),
    );
  }
}
