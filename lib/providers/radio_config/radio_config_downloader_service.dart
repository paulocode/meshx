// coverage:ignore-file
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/radio_connector_state.dart';
import '../../services/radio_config/radio_config_downloader_service.dart';
import '../queued_radio_writer.dart';
import '../radio_connector_service.dart';
import '../radio_reader.dart';
import 'extra_radio_config.dart';
import 'radio_config_service.dart';

part 'radio_config_downloader_service.g.dart';

@Riverpod(keepAlive: true)
RadioConfigDownloaderService radioConfigDownloaderService(
  RadioConfigDownloaderServiceRef ref,
) {
  final sub = ref.listen(radioConnectorServiceProvider, (_, next) {
    if (next is Connected) {
      ref.invalidateSelf();
    }
  });
  return RadioConfigDownloaderService(
    radioWriter: ref.watch(queuedRadioWriterProvider),
    radioReader: ref.watch(radioReaderProvider),
    radioConnectorState: sub.read(),
    // riverpod requires us to read the notifier
    radioConfigServiceProvider: () =>
        ref.read(radioConfigServiceProvider.notifier),
    extraRadioConfigProvider: () =>
        ref.read(extraRadioConfigProvider.notifier),
    disconnect: (errorMsg) => ref
        .read(radioConnectorServiceProvider.notifier)
        .disconnect(errorMsg: errorMsg),
    onDispose: ref.onDispose,
  );
}
