import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../extensions.dart';
import '../../models/mesh_channel.dart';
import '../../protobufs/generated/meshtastic/channel.pb.dart';
import '../../providers/channel_service.dart';
import '../../widgets/app_bar_connection_indicator.dart';
import '../../widgets/channel_input_form.dart';
import '../../widgets/channel_qr_show.dart';

class ChannelsConfigScreen extends ConsumerStatefulWidget {
  const ChannelsConfigScreen({super.key});

  @override
  ConsumerState<ChannelsConfigScreen> createState() =>
      _ChannelsConfigScreenState();
}

class _ChannelsConfigScreenState extends ConsumerState<ChannelsConfigScreen> {
  @override
  Widget build(BuildContext context) {
    final channels = ref.watch(channelServiceProvider).toList();
    final channelService = ref.watch(channelServiceProvider.notifier);
    final activeChannels = channels.where((element) => element.used).toList();
    return Scaffold(
      appBar: const AppBarWithConnectionIndicator(title: 'Channels ⚙️'),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: activeChannels.length,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () async {
                        _showModalForChannel(
                          context,
                          constraints,
                          activeChannels[index],
                          isNew: false,
                        );
                      },
                      child: Card(
                        child: ListTile(
                          leading: Text(activeChannels[index].index.toString()),
                          title: Text(activeChannels[index].name),
                          subtitle: Text(
                            activeChannels[index].role.toString().capitalize(),
                          ),
                          trailing: const Icon(Icons.edit),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                IconButton.filled(
                  onPressed: activeChannels.length == 8
                      ? null
                      : () {
                          _showModalForChannel(
                            context,
                            constraints,
                            isNew: true,
                            MeshChannel(
                              name: '',
                              role: Channel_Role.SECONDARY,
                              key: [1],
                              index: _firstDisabledSlot(channels),
                              uplinkEnabled: false,
                              downlinkEnabled: false,
                            ),
                          );
                        },
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        context.push('/channelQrScanner');
                      },
                      label: const Text('Scan QR'),
                      icon: const Icon(Icons.camera),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {
                        _showModalForQr(
                          context,
                          constraints,
                          channelService.generateUrl(),
                        );
                      },
                      label: const Text('Show QR'),
                      icon: const Icon(Icons.qr_code),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  int _firstDisabledSlot(List<MeshChannel> channels) =>
      channels.indexOf(channels.firstWhere((element) => !element.used));

  void _showModalForChannel(
    BuildContext context,
    BoxConstraints constraints,
    MeshChannel channel, {
    required bool isNew,
  }) {
    showModalBottomSheet<MeshChannel>(
      context: context,
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth > 600 ? 600 : constraints.maxWidth,
        maxWidth: 600,
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ChannelInputForm(
            channel: channel.copyWith(),
            isNew: isNew,
          ),
        );
      },
    );
  }

  void _showModalForQr(
    BuildContext context,
    BoxConstraints constraints,
    String url,
  ) {
    showModalBottomSheet<MeshChannel>(
      context: context,
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth > 600 ? 600 : constraints.maxWidth,
        maxWidth: 600,
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ChannelQrShow(url),
        );
      },
    );
  }
}