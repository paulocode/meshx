import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/radio_connector_state.dart';
import '../providers/radio_config/radio_config_service.dart';
import '../providers/radio_connector_service.dart';

class ConnectedRadio extends ConsumerWidget {
  const ConnectedRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioConfig = ref.watch(radioConfigServiceProvider);
    final radioConnectorState = ref.watch(radioConnectorServiceProvider);
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                radius: 40,
                child: radioConnectorState is Connected
                    ? radioConfig.configDownloaded
                        ? Text(radioConfig.myNodeInfo.user.shortName)
                        : const CircularProgressIndicator()
                    : Icon(
                        Icons.cloud_off,
                        color: Theme.of(context).colorScheme.error,
                        size: 40,
                      ),
              ),
            ),
            const SizedBox(width: 16),
            if (radioConfig.configDownloaded)
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(radioConfig.myNodeInfo.user.longName),
                    Row(
                      children: [
                        const Icon(
                          Icons.radio,
                          size: 20,
                        ),
                        Text(radioConfig.myNodeInfo.user.hwModel.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.battery_charging_full_sharp,
                          size: 20,
                        ),
                        Text(
                          '${radioConfig.myNodeInfo.deviceMetrics.batteryLevel}%',
                        ),
                      ],
                    ),
                    if (radioConnectorState is BleConnected)
                      const Row(
                        children: [
                          Icon(
                            Icons.bluetooth,
                            size: 20,
                          ),
                          Text('Bluetooth'),
                        ],
                      )
                    else if (radioConnectorState is TcpConnected)
                      const Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            size: 20,
                          ),
                          Text('W/LAN'),
                        ],
                      )
                    else
                      Container(),
                  ],
                ),
              )
            else if (radioConnectorState is Connected)
              Expanded(
                child: Text(
                  'Downloading config...',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              )
            else
              Expanded(
                child: Text(
                  'No radio connected.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            const SizedBox(width: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                  ),
                  onPressed: () {
                    context.push('/radioConfig');
                  },
                  child: const Icon(
                    Icons.settings,
                    size: 54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
