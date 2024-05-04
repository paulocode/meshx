import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_csv/to_csv.dart';

import '../../extensions.dart';
import '../radio_config/radio_config_service.dart';
import '../repository/telemetry_repository.dart';
part 'telemetry_saver.g.dart';

@Riverpod(keepAlive: true)
Raw<Future<void>> telemetrySaver(TelemetrySaverRef ref, int nodeNum) async {
  final telemetryRepository = ref.watch(telemetryRepositoryProvider);
  final myNodeNum =
      ref.watch(radioConfigServiceProvider.select((value) => value.myNodeNum));
  final displayFahrenheit = ref.watch(
    radioConfigServiceProvider
        .select((value) => value.telemetryConfig.environmentDisplayFahrenheit),
  );

  final data =
      await telemetryRepository.get(fromNode: nodeNum, owner: myNodeNum);

  final parsedData = data.map((it) {
    final telemetry = it.telemetry;
    final environmentalMetrics = it.telemetry.environmentMetrics;
    final recordedTime =
        DateTime.fromMillisecondsSinceEpoch(telemetry.time * 1000);
    final recordedTimeString = recordedTime.year < 2000
        ? 'Unknown'
        : DateFormat.yMd().add_Hms().format(recordedTime);
    final temp = displayFahrenheit
        ? environmentalMetrics.temperature.cToF()
        : environmentalMetrics.temperature;
    return [
      DateFormat.yMd().add_Hms().format(it.timeReceived),
      recordedTimeString,
      temp.toString(),
      environmentalMetrics.relativeHumidity.toString(),
      environmentalMetrics.barometricPressure.toString(),
      environmentalMetrics.gasResistance.toString(),
      environmentalMetrics.iaq.toString(),
    ];
  }).toList();

  final nodeNumHex = nodeNum.toRadixString(16).padLeft(4, '0');
  final nodeNumHexLastFour = nodeNumHex.substring(nodeNumHex.length - 4);
  final formattedDate =
      DateFormat('MM-dd-yyyy-HH-mm-ss').format(DateTime.now());

  await myCSV(
    [
      'Time received',
      'Time recorded',
      'Temperature ${displayFahrenheit ? 'F' : 'C'}',
      'Relative Humidity',
      'Barometric Pressure',
      'Gas Resistance',
      'IAQ',
    ],
    parsedData,
    fileName: 'Telemetry-$nodeNumHexLastFour-$formattedDate',
  );
}