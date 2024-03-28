// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extra_radio_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExtraRadioConfigState {
  int get myNodeNum => throw _privateConstructorUsedError;
  int get hopLimit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtraRadioConfigStateCopyWith<ExtraRadioConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraRadioConfigStateCopyWith<$Res> {
  factory $ExtraRadioConfigStateCopyWith(ExtraRadioConfigState value,
          $Res Function(ExtraRadioConfigState) then) =
      _$ExtraRadioConfigStateCopyWithImpl<$Res, ExtraRadioConfigState>;
  @useResult
  $Res call({int myNodeNum, int hopLimit});
}

/// @nodoc
class _$ExtraRadioConfigStateCopyWithImpl<$Res,
        $Val extends ExtraRadioConfigState>
    implements $ExtraRadioConfigStateCopyWith<$Res> {
  _$ExtraRadioConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myNodeNum = null,
    Object? hopLimit = null,
  }) {
    return _then(_value.copyWith(
      myNodeNum: null == myNodeNum
          ? _value.myNodeNum
          : myNodeNum // ignore: cast_nullable_to_non_nullable
              as int,
      hopLimit: null == hopLimit
          ? _value.hopLimit
          : hopLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraRadioConfigStateImplCopyWith<$Res>
    implements $ExtraRadioConfigStateCopyWith<$Res> {
  factory _$$ExtraRadioConfigStateImplCopyWith(
          _$ExtraRadioConfigStateImpl value,
          $Res Function(_$ExtraRadioConfigStateImpl) then) =
      __$$ExtraRadioConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int myNodeNum, int hopLimit});
}

/// @nodoc
class __$$ExtraRadioConfigStateImplCopyWithImpl<$Res>
    extends _$ExtraRadioConfigStateCopyWithImpl<$Res,
        _$ExtraRadioConfigStateImpl>
    implements _$$ExtraRadioConfigStateImplCopyWith<$Res> {
  __$$ExtraRadioConfigStateImplCopyWithImpl(_$ExtraRadioConfigStateImpl _value,
      $Res Function(_$ExtraRadioConfigStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myNodeNum = null,
    Object? hopLimit = null,
  }) {
    return _then(_$ExtraRadioConfigStateImpl(
      myNodeNum: null == myNodeNum
          ? _value.myNodeNum
          : myNodeNum // ignore: cast_nullable_to_non_nullable
              as int,
      hopLimit: null == hopLimit
          ? _value.hopLimit
          : hopLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExtraRadioConfigStateImpl extends _ExtraRadioConfigState {
  const _$ExtraRadioConfigStateImpl({this.myNodeNum = 0, this.hopLimit = 3})
      : super._();

  @override
  @JsonKey()
  final int myNodeNum;
  @override
  @JsonKey()
  final int hopLimit;

  @override
  String toString() {
    return 'ExtraRadioConfigState(myNodeNum: $myNodeNum, hopLimit: $hopLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraRadioConfigStateImpl &&
            (identical(other.myNodeNum, myNodeNum) ||
                other.myNodeNum == myNodeNum) &&
            (identical(other.hopLimit, hopLimit) ||
                other.hopLimit == hopLimit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myNodeNum, hopLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraRadioConfigStateImplCopyWith<_$ExtraRadioConfigStateImpl>
      get copyWith => __$$ExtraRadioConfigStateImplCopyWithImpl<
          _$ExtraRadioConfigStateImpl>(this, _$identity);
}

abstract class _ExtraRadioConfigState extends ExtraRadioConfigState {
  const factory _ExtraRadioConfigState(
      {final int myNodeNum, final int hopLimit}) = _$ExtraRadioConfigStateImpl;
  const _ExtraRadioConfigState._() : super._();

  @override
  int get myNodeNum;
  @override
  int get hopLimit;
  @override
  @JsonKey(ignore: true)
  _$$ExtraRadioConfigStateImplCopyWith<_$ExtraRadioConfigStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
