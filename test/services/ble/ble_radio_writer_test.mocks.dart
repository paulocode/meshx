// Mocks generated by Mockito 5.4.4 from annotations
// in multimesh/test/services/ble/ble_radio_writer_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_blue_plus/flutter_blue_plus.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:multimesh/models/ble_characteristics.dart' as _i3;
import 'package:multimesh/models/mesh_radio.dart' as _i4;
import 'package:multimesh/models/radio_connector_state.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDeviceIdentifier_0 extends _i1.SmartFake
    implements _i2.DeviceIdentifier {
  _FakeDeviceIdentifier_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGuid_1 extends _i1.SmartFake implements _i2.Guid {
  _FakeGuid_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBluetoothDevice_2 extends _i1.SmartFake
    implements _i2.BluetoothDevice {
  _FakeBluetoothDevice_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCharacteristicProperties_3 extends _i1.SmartFake
    implements _i2.CharacteristicProperties {
  _FakeCharacteristicProperties_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBleCharacteristics_4 extends _i1.SmartFake
    implements _i3.BleCharacteristics {
  _FakeBleCharacteristics_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBleMeshRadio_5 extends _i1.SmartFake implements _i4.BleMeshRadio {
  _FakeBleMeshRadio_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBluetoothCharacteristic_6 extends _i1.SmartFake
    implements _i2.BluetoothCharacteristic {
  _FakeBluetoothCharacteristic_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BluetoothCharacteristic].
///
/// See the documentation for Mockito's code generation for more information.
class MockBluetoothCharacteristic extends _i1.Mock
    implements _i2.BluetoothCharacteristic {
  MockBluetoothCharacteristic() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.DeviceIdentifier get remoteId => (super.noSuchMethod(
        Invocation.getter(#remoteId),
        returnValue: _FakeDeviceIdentifier_0(
          this,
          Invocation.getter(#remoteId),
        ),
      ) as _i2.DeviceIdentifier);

  @override
  _i2.Guid get serviceUuid => (super.noSuchMethod(
        Invocation.getter(#serviceUuid),
        returnValue: _FakeGuid_1(
          this,
          Invocation.getter(#serviceUuid),
        ),
      ) as _i2.Guid);

  @override
  _i2.Guid get characteristicUuid => (super.noSuchMethod(
        Invocation.getter(#characteristicUuid),
        returnValue: _FakeGuid_1(
          this,
          Invocation.getter(#characteristicUuid),
        ),
      ) as _i2.Guid);

  @override
  _i2.Guid get uuid => (super.noSuchMethod(
        Invocation.getter(#uuid),
        returnValue: _FakeGuid_1(
          this,
          Invocation.getter(#uuid),
        ),
      ) as _i2.Guid);

  @override
  _i2.BluetoothDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeBluetoothDevice_2(
          this,
          Invocation.getter(#device),
        ),
      ) as _i2.BluetoothDevice);

  @override
  _i2.CharacteristicProperties get properties => (super.noSuchMethod(
        Invocation.getter(#properties),
        returnValue: _FakeCharacteristicProperties_3(
          this,
          Invocation.getter(#properties),
        ),
      ) as _i2.CharacteristicProperties);

  @override
  List<_i2.BluetoothDescriptor> get descriptors => (super.noSuchMethod(
        Invocation.getter(#descriptors),
        returnValue: <_i2.BluetoothDescriptor>[],
      ) as List<_i2.BluetoothDescriptor>);

  @override
  List<int> get lastValue => (super.noSuchMethod(
        Invocation.getter(#lastValue),
        returnValue: <int>[],
      ) as List<int>);

  @override
  _i5.Stream<List<int>> get lastValueStream => (super.noSuchMethod(
        Invocation.getter(#lastValueStream),
        returnValue: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);

  @override
  _i5.Stream<List<int>> get onValueReceived => (super.noSuchMethod(
        Invocation.getter(#onValueReceived),
        returnValue: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);

  @override
  bool get isNotifying => (super.noSuchMethod(
        Invocation.getter(#isNotifying),
        returnValue: false,
      ) as bool);

  @override
  _i2.DeviceIdentifier get deviceId => (super.noSuchMethod(
        Invocation.getter(#deviceId),
        returnValue: _FakeDeviceIdentifier_0(
          this,
          Invocation.getter(#deviceId),
        ),
      ) as _i2.DeviceIdentifier);

  @override
  _i5.Stream<List<int>> get value => (super.noSuchMethod(
        Invocation.getter(#value),
        returnValue: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);

  @override
  _i5.Stream<List<int>> get onValueChangedStream => (super.noSuchMethod(
        Invocation.getter(#onValueChangedStream),
        returnValue: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);

  @override
  _i5.Future<List<int>> read({int? timeout = 15}) => (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {#timeout: timeout},
        ),
        returnValue: _i5.Future<List<int>>.value(<int>[]),
      ) as _i5.Future<List<int>>);

  @override
  _i5.Future<void> write(
    List<int>? value, {
    bool? withoutResponse = false,
    bool? allowLongWrite = false,
    int? timeout = 15,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [value],
          {
            #withoutResponse: withoutResponse,
            #allowLongWrite: allowLongWrite,
            #timeout: timeout,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<bool> setNotifyValue(
    bool? notify, {
    int? timeout = 15,
    bool? forceIndications = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setNotifyValue,
          [notify],
          {
            #timeout: timeout,
            #forceIndications: forceIndications,
          },
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [BleConnected].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockBleConnected extends _i1.Mock implements _i6.BleConnected {
  MockBleConnected() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.BleCharacteristics get bleCharacteristics => (super.noSuchMethod(
        Invocation.getter(#bleCharacteristics),
        returnValue: _FakeBleCharacteristics_4(
          this,
          Invocation.getter(#bleCharacteristics),
        ),
      ) as _i3.BleCharacteristics);

  @override
  _i2.BluetoothDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeBluetoothDevice_2(
          this,
          Invocation.getter(#device),
        ),
      ) as _i2.BluetoothDevice);

  @override
  bool get isNewRadio => (super.noSuchMethod(
        Invocation.getter(#isNewRadio),
        returnValue: false,
      ) as bool);

  @override
  _i4.BleMeshRadio get radio => (super.noSuchMethod(
        Invocation.getter(#radio),
        returnValue: _FakeBleMeshRadio_5(
          this,
          Invocation.getter(#radio),
        ),
      ) as _i4.BleMeshRadio);

  @override
  String get radioId => (super.noSuchMethod(
        Invocation.getter(#radioId),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#radioId),
        ),
      ) as String);

  @override
  _i6.Connected<_i4.MeshRadio> copyWith({
    bool? isNewRadio,
    _i4.BleMeshRadio? radio,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #copyWith,
          [],
          {
            #isNewRadio: isNewRadio,
            #radio: radio,
          },
        ),
        returnValue: _i7.dummyValue<_i6.Connected<_i4.MeshRadio>>(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #isNewRadio: isNewRadio,
              #radio: radio,
            },
          ),
        ),
      ) as _i6.Connected<_i4.MeshRadio>);
}

/// A class which mocks [BleCharacteristics].
///
/// See the documentation for Mockito's code generation for more information.
class MockBleCharacteristics extends _i1.Mock
    implements _i3.BleCharacteristics {
  MockBleCharacteristics() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BluetoothCharacteristic get toRadio => (super.noSuchMethod(
        Invocation.getter(#toRadio),
        returnValue: _FakeBluetoothCharacteristic_6(
          this,
          Invocation.getter(#toRadio),
        ),
      ) as _i2.BluetoothCharacteristic);

  @override
  _i2.BluetoothCharacteristic get fromRadio => (super.noSuchMethod(
        Invocation.getter(#fromRadio),
        returnValue: _FakeBluetoothCharacteristic_6(
          this,
          Invocation.getter(#fromRadio),
        ),
      ) as _i2.BluetoothCharacteristic);

  @override
  _i2.BluetoothCharacteristic get fromNum => (super.noSuchMethod(
        Invocation.getter(#fromNum),
        returnValue: _FakeBluetoothCharacteristic_6(
          this,
          Invocation.getter(#fromNum),
        ),
      ) as _i2.BluetoothCharacteristic);
}
