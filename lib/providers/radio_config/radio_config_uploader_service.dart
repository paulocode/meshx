// coverage:ignore-file
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/radio_config/radio_config_uploader_service.dart';
import '../queued_radio_writer.dart';
import 'extra_radio_config.dart';

part 'radio_config_uploader_service.g.dart';

@Riverpod(keepAlive: true)
RadioConfigUploaderService radioConfigUploaderService(
  RadioConfigUploaderServiceRef ref,
) {
  return RadioConfigUploaderService(
    radioWriter: ref.watch(queuedRadioWriterProvider),
    myNodeNum: () => ref.read(extraRadioConfigProvider).myNodeNum,
  );
}
