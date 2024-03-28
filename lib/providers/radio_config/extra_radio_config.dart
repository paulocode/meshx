import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/extra_radio_config_state.dart';

part 'extra_radio_config.g.dart';

// the only purpose is to prevent circular dependencies
@Riverpod(keepAlive: true)
class ExtraRadioConfig extends _$ExtraRadioConfig {

  @override
  ExtraRadioConfigState build() {
    return const ExtraRadioConfigState();
  }

  void setMyNodeNum(int myNodeNum) {
    state = state.copyWith(myNodeNum: myNodeNum);
  }

  void setHopLimit(int hopLimit) {
    state = state.copyWith(hopLimit: hopLimit);
  }
}