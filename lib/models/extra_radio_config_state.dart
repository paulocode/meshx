import 'package:freezed_annotation/freezed_annotation.dart';
part 'extra_radio_config_state.freezed.dart';

@freezed
class ExtraRadioConfigState with _$ExtraRadioConfigState {
  const factory ExtraRadioConfigState({
    @Default(0) int myNodeNum,
    @Default(3) int hopLimit,
  }) = _ExtraRadioConfigState;
  const ExtraRadioConfigState._();
}