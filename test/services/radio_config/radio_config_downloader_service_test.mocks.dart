// Mocks generated by Mockito 5.4.4 from annotations
// in multimesh/test/services/radio_config/radio_config_downloader_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;
import 'dart:typed_data' as _i12;

import 'package:flutter_blue_plus/flutter_blue_plus.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i17;
import 'package:multimesh/models/ble_characteristics.dart' as _i5;
import 'package:multimesh/models/mesh_radio.dart' as _i6;
import 'package:multimesh/models/radio_configuration.dart' as _i3;
import 'package:multimesh/models/radio_connector_state.dart' as _i18;
import 'package:multimesh/protobufs/generated/meshtastic/config.pb.dart'
    as _i16;
import 'package:multimesh/protobufs/generated/meshtastic/mesh.pb.dart' as _i13;
import 'package:multimesh/protobufs/generated/meshtastic/portnums.pb.dart'
    as _i11;
import 'package:multimesh/providers/radio_config/radio_config_service.dart'
    as _i15;
import 'package:multimesh/providers/radio_connector_service.dart' as _i19;
import 'package:multimesh/services/interfaces/radio_reader.dart' as _i9;
import 'package:multimesh/services/interfaces/radio_writer.dart' as _i8;
import 'package:multimesh/services/queued_radio_writer.dart' as _i7;
import 'package:multimesh/services/radio_config/radio_config_downloader_service.dart'
    as _i14;
import 'package:riverpod_annotation/riverpod_annotation.dart' as _i2;

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

class _FakeNotifierProviderRef_0<T> extends _i1.SmartFake
    implements _i2.NotifierProviderRef<T> {
  _FakeNotifierProviderRef_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRadioConfiguration_1 extends _i1.SmartFake
    implements _i3.RadioConfiguration {
  _FakeRadioConfiguration_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeviceIdentifier_2 extends _i1.SmartFake
    implements _i4.DeviceIdentifier {
  _FakeDeviceIdentifier_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGuid_3 extends _i1.SmartFake implements _i4.Guid {
  _FakeGuid_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBluetoothDevice_4 extends _i1.SmartFake
    implements _i4.BluetoothDevice {
  _FakeBluetoothDevice_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCharacteristicProperties_5 extends _i1.SmartFake
    implements _i4.CharacteristicProperties {
  _FakeCharacteristicProperties_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBleCharacteristics_6 extends _i1.SmartFake
    implements _i5.BleCharacteristics {
  _FakeBleCharacteristics_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBleMeshRadio_7 extends _i1.SmartFake implements _i6.BleMeshRadio {
  _FakeBleMeshRadio_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AckWaitingRadioWriter].
///
/// See the documentation for Mockito's code generation for more information.
class MockAckWaitingRadioWriter extends _i1.Mock
    implements _i7.AckWaitingRadioWriter {
  MockAckWaitingRadioWriter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void setRadioWriter(_i8.RadioWriter? radioWriter) => super.noSuchMethod(
        Invocation.method(
          #setRadioWriter,
          [radioWriter],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setRadioReader(_i9.RadioReader? radioReader) => super.noSuchMethod(
        Invocation.method(
          #setRadioReader,
          [radioReader],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i10.Future<void> sendMeshPacket({
    required int? to,
    int? channel = 0,
    bool? wantAck = false,
    required _i11.PortNum? portNum,
    required _i12.Uint8List? payload,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendMeshPacket,
          [],
          {
            #to: to,
            #channel: channel,
            #wantAck: wantAck,
            #portNum: portNum,
            #payload: payload,
            #id: id,
          },
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> sendWantConfig({required int? wantConfigId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendWantConfig,
          [],
          {#wantConfigId: wantConfigId},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  int generatePacketId() => (super.noSuchMethod(
        Invocation.method(
          #generatePacketId,
          [],
        ),
        returnValue: 0,
      ) as int);

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RadioReader].
///
/// See the documentation for Mockito's code generation for more information.
class MockRadioReader extends _i1.Mock implements _i9.RadioReader {
  MockRadioReader() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Stream<_i13.FromRadio> onPacketReceived() => (super.noSuchMethod(
        Invocation.method(
          #onPacketReceived,
          [],
        ),
        returnValue: _i10.Stream<_i13.FromRadio>.empty(),
      ) as _i10.Stream<_i13.FromRadio>);
}

/// A class which mocks [RadioConfigDownloaderService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRadioConfigDownloaderService extends _i1.Mock
    implements _i14.RadioConfigDownloaderService {
  MockRadioConfigDownloaderService() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [RadioConfigService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRadioConfigService extends _i1.Mock
    implements _i15.RadioConfigService {
  MockRadioConfigService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.NotifierProviderRef<_i3.RadioConfiguration> get ref =>
      (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeNotifierProviderRef_0<_i3.RadioConfiguration>(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.NotifierProviderRef<_i3.RadioConfiguration>);

  @override
  _i3.RadioConfiguration get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeRadioConfiguration_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.RadioConfiguration);

  @override
  set state(_i3.RadioConfiguration? value) => super.noSuchMethod(
        Invocation.setter(
          #state,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.RadioConfiguration build() => (super.noSuchMethod(
        Invocation.method(
          #build,
          [],
        ),
        returnValue: _FakeRadioConfiguration_1(
          this,
          Invocation.method(
            #build,
            [],
          ),
        ),
      ) as _i3.RadioConfiguration);

  @override
  void setLoraConfig(_i16.Config_LoRaConfig? loraConfig) => super.noSuchMethod(
        Invocation.method(
          #setLoraConfig,
          [loraConfig],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setMyNodeInfo(_i13.NodeInfo? myNodeInfo) => super.noSuchMethod(
        Invocation.method(
          #setMyNodeInfo,
          [myNodeInfo],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setMyNodeNum(int? myNodeNum) => super.noSuchMethod(
        Invocation.method(
          #setMyNodeNum,
          [myNodeNum],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setHasOwnNodeInfo() => super.noSuchMethod(
        Invocation.method(
          #setHasOwnNodeInfo,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setConfigDownloaded() => super.noSuchMethod(
        Invocation.method(
          #setConfigDownloaded,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool updateShouldNotify(
    _i3.RadioConfiguration? previous,
    _i3.RadioConfiguration? next,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateShouldNotify,
          [
            previous,
            next,
          ],
        ),
        returnValue: false,
      ) as bool);
}

/// A class which mocks [BluetoothCharacteristic].
///
/// See the documentation for Mockito's code generation for more information.
class MockBluetoothCharacteristic extends _i1.Mock
    implements _i4.BluetoothCharacteristic {
  MockBluetoothCharacteristic() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.DeviceIdentifier get remoteId => (super.noSuchMethod(
        Invocation.getter(#remoteId),
        returnValue: _FakeDeviceIdentifier_2(
          this,
          Invocation.getter(#remoteId),
        ),
      ) as _i4.DeviceIdentifier);

  @override
  _i4.Guid get serviceUuid => (super.noSuchMethod(
        Invocation.getter(#serviceUuid),
        returnValue: _FakeGuid_3(
          this,
          Invocation.getter(#serviceUuid),
        ),
      ) as _i4.Guid);

  @override
  _i4.Guid get characteristicUuid => (super.noSuchMethod(
        Invocation.getter(#characteristicUuid),
        returnValue: _FakeGuid_3(
          this,
          Invocation.getter(#characteristicUuid),
        ),
      ) as _i4.Guid);

  @override
  _i4.Guid get uuid => (super.noSuchMethod(
        Invocation.getter(#uuid),
        returnValue: _FakeGuid_3(
          this,
          Invocation.getter(#uuid),
        ),
      ) as _i4.Guid);

  @override
  _i4.BluetoothDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeBluetoothDevice_4(
          this,
          Invocation.getter(#device),
        ),
      ) as _i4.BluetoothDevice);

  @override
  _i4.CharacteristicProperties get properties => (super.noSuchMethod(
        Invocation.getter(#properties),
        returnValue: _FakeCharacteristicProperties_5(
          this,
          Invocation.getter(#properties),
        ),
      ) as _i4.CharacteristicProperties);

  @override
  List<_i4.BluetoothDescriptor> get descriptors => (super.noSuchMethod(
        Invocation.getter(#descriptors),
        returnValue: <_i4.BluetoothDescriptor>[],
      ) as List<_i4.BluetoothDescriptor>);

  @override
  List<int> get lastValue => (super.noSuchMethod(
        Invocation.getter(#lastValue),
        returnValue: <int>[],
      ) as List<int>);

  @override
  _i10.Stream<List<int>> get lastValueStream => (super.noSuchMethod(
        Invocation.getter(#lastValueStream),
        returnValue: _i10.Stream<List<int>>.empty(),
      ) as _i10.Stream<List<int>>);

  @override
  _i10.Stream<List<int>> get onValueReceived => (super.noSuchMethod(
        Invocation.getter(#onValueReceived),
        returnValue: _i10.Stream<List<int>>.empty(),
      ) as _i10.Stream<List<int>>);

  @override
  bool get isNotifying => (super.noSuchMethod(
        Invocation.getter(#isNotifying),
        returnValue: false,
      ) as bool);

  @override
  _i4.DeviceIdentifier get deviceId => (super.noSuchMethod(
        Invocation.getter(#deviceId),
        returnValue: _FakeDeviceIdentifier_2(
          this,
          Invocation.getter(#deviceId),
        ),
      ) as _i4.DeviceIdentifier);

  @override
  _i10.Stream<List<int>> get value => (super.noSuchMethod(
        Invocation.getter(#value),
        returnValue: _i10.Stream<List<int>>.empty(),
      ) as _i10.Stream<List<int>>);

  @override
  _i10.Stream<List<int>> get onValueChangedStream => (super.noSuchMethod(
        Invocation.getter(#onValueChangedStream),
        returnValue: _i10.Stream<List<int>>.empty(),
      ) as _i10.Stream<List<int>>);

  @override
  _i10.Future<List<int>> read({int? timeout = 15}) => (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {#timeout: timeout},
        ),
        returnValue: _i10.Future<List<int>>.value(<int>[]),
      ) as _i10.Future<List<int>>);

  @override
  _i10.Future<void> write(
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
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<bool> setNotifyValue(
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
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);
}

/// A class which mocks [BluetoothDevice].
///
/// See the documentation for Mockito's code generation for more information.
class MockBluetoothDevice extends _i1.Mock implements _i4.BluetoothDevice {
  MockBluetoothDevice() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.DeviceIdentifier get remoteId => (super.noSuchMethod(
        Invocation.getter(#remoteId),
        returnValue: _FakeDeviceIdentifier_2(
          this,
          Invocation.getter(#remoteId),
        ),
      ) as _i4.DeviceIdentifier);

  @override
  String get platformName => (super.noSuchMethod(
        Invocation.getter(#platformName),
        returnValue: _i17.dummyValue<String>(
          this,
          Invocation.getter(#platformName),
        ),
      ) as String);

  @override
  String get advName => (super.noSuchMethod(
        Invocation.getter(#advName),
        returnValue: _i17.dummyValue<String>(
          this,
          Invocation.getter(#advName),
        ),
      ) as String);

  @override
  List<_i4.BluetoothService> get servicesList => (super.noSuchMethod(
        Invocation.getter(#servicesList),
        returnValue: <_i4.BluetoothService>[],
      ) as List<_i4.BluetoothService>);

  @override
  bool get isAutoConnectEnabled => (super.noSuchMethod(
        Invocation.getter(#isAutoConnectEnabled),
        returnValue: false,
      ) as bool);

  @override
  bool get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisconnected => (super.noSuchMethod(
        Invocation.getter(#isDisconnected),
        returnValue: false,
      ) as bool);

  @override
  _i10.Stream<_i4.BluetoothConnectionState> get connectionState =>
      (super.noSuchMethod(
        Invocation.getter(#connectionState),
        returnValue: _i10.Stream<_i4.BluetoothConnectionState>.empty(),
      ) as _i10.Stream<_i4.BluetoothConnectionState>);

  @override
  int get mtuNow => (super.noSuchMethod(
        Invocation.getter(#mtuNow),
        returnValue: 0,
      ) as int);

  @override
  _i10.Stream<int> get mtu => (super.noSuchMethod(
        Invocation.getter(#mtu),
        returnValue: _i10.Stream<int>.empty(),
      ) as _i10.Stream<int>);

  @override
  _i10.Stream<void> get onServicesReset => (super.noSuchMethod(
        Invocation.getter(#onServicesReset),
        returnValue: _i10.Stream<void>.empty(),
      ) as _i10.Stream<void>);

  @override
  _i10.Stream<_i4.BluetoothBondState> get bondState => (super.noSuchMethod(
        Invocation.getter(#bondState),
        returnValue: _i10.Stream<_i4.BluetoothBondState>.empty(),
      ) as _i10.Stream<_i4.BluetoothBondState>);

  @override
  _i10.Stream<bool> get isDiscoveringServices => (super.noSuchMethod(
        Invocation.getter(#isDiscoveringServices),
        returnValue: _i10.Stream<bool>.empty(),
      ) as _i10.Stream<bool>);

  @override
  _i4.DeviceIdentifier get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: _FakeDeviceIdentifier_2(
          this,
          Invocation.getter(#id),
        ),
      ) as _i4.DeviceIdentifier);

  @override
  String get localName => (super.noSuchMethod(
        Invocation.getter(#localName),
        returnValue: _i17.dummyValue<String>(
          this,
          Invocation.getter(#localName),
        ),
      ) as String);

  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: _i17.dummyValue<String>(
          this,
          Invocation.getter(#name),
        ),
      ) as String);

  @override
  _i10.Stream<_i4.BluetoothConnectionState> get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i10.Stream<_i4.BluetoothConnectionState>.empty(),
      ) as _i10.Stream<_i4.BluetoothConnectionState>);

  @override
  _i10.Stream<List<_i4.BluetoothService>> get servicesStream =>
      (super.noSuchMethod(
        Invocation.getter(#servicesStream),
        returnValue: _i10.Stream<List<_i4.BluetoothService>>.empty(),
      ) as _i10.Stream<List<_i4.BluetoothService>>);

  @override
  _i10.Stream<List<_i4.BluetoothService>> get services => (super.noSuchMethod(
        Invocation.getter(#services),
        returnValue: _i10.Stream<List<_i4.BluetoothService>>.empty(),
      ) as _i10.Stream<List<_i4.BluetoothService>>);

  @override
  void cancelWhenDisconnected(
    _i10.StreamSubscription<dynamic>? subscription, {
    bool? next = false,
    bool? delayed = false,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #cancelWhenDisconnected,
          [subscription],
          {
            #next: next,
            #delayed: delayed,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i10.Future<void> connect({
    Duration? timeout = const Duration(seconds: 35),
    int? mtu = 512,
    bool? autoConnect = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #connect,
          [],
          {
            #timeout: timeout,
            #mtu: mtu,
            #autoConnect: autoConnect,
          },
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> disconnect({
    int? timeout = 35,
    bool? queue = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #disconnect,
          [],
          {
            #timeout: timeout,
            #queue: queue,
          },
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<List<_i4.BluetoothService>> discoverServices({
    bool? subscribeToServicesChanged = true,
    int? timeout = 15,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #discoverServices,
          [],
          {
            #subscribeToServicesChanged: subscribeToServicesChanged,
            #timeout: timeout,
          },
        ),
        returnValue: _i10.Future<List<_i4.BluetoothService>>.value(
            <_i4.BluetoothService>[]),
      ) as _i10.Future<List<_i4.BluetoothService>>);

  @override
  _i10.Future<int> readRssi({int? timeout = 15}) => (super.noSuchMethod(
        Invocation.method(
          #readRssi,
          [],
          {#timeout: timeout},
        ),
        returnValue: _i10.Future<int>.value(0),
      ) as _i10.Future<int>);

  @override
  _i10.Future<int> requestMtu(
    int? desiredMtu, {
    double? predelay = 0.35,
    int? timeout = 15,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestMtu,
          [desiredMtu],
          {
            #predelay: predelay,
            #timeout: timeout,
          },
        ),
        returnValue: _i10.Future<int>.value(0),
      ) as _i10.Future<int>);

  @override
  _i10.Future<void> requestConnectionPriority(
          {required _i4.ConnectionPriority? connectionPriorityRequest}) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestConnectionPriority,
          [],
          {#connectionPriorityRequest: connectionPriorityRequest},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> setPreferredPhy({
    required int? txPhy,
    required int? rxPhy,
    required _i4.PhyCoding? option,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setPreferredPhy,
          [],
          {
            #txPhy: txPhy,
            #rxPhy: rxPhy,
            #option: option,
          },
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> createBond({int? timeout = 90}) => (super.noSuchMethod(
        Invocation.method(
          #createBond,
          [],
          {#timeout: timeout},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> removeBond({int? timeout = 30}) => (super.noSuchMethod(
        Invocation.method(
          #removeBond,
          [],
          {#timeout: timeout},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> clearGattCache() => (super.noSuchMethod(
        Invocation.method(
          #clearGattCache,
          [],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> pair() => (super.noSuchMethod(
        Invocation.method(
          #pair,
          [],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);
}

/// A class which mocks [BleConnected].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockBleConnected extends _i1.Mock implements _i18.BleConnected {
  MockBleConnected() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.BleCharacteristics get bleCharacteristics => (super.noSuchMethod(
        Invocation.getter(#bleCharacteristics),
        returnValue: _FakeBleCharacteristics_6(
          this,
          Invocation.getter(#bleCharacteristics),
        ),
      ) as _i5.BleCharacteristics);

  @override
  _i4.BluetoothDevice get device => (super.noSuchMethod(
        Invocation.getter(#device),
        returnValue: _FakeBluetoothDevice_4(
          this,
          Invocation.getter(#device),
        ),
      ) as _i4.BluetoothDevice);

  @override
  bool get isNewRadio => (super.noSuchMethod(
        Invocation.getter(#isNewRadio),
        returnValue: false,
      ) as bool);

  @override
  _i6.BleMeshRadio get radio => (super.noSuchMethod(
        Invocation.getter(#radio),
        returnValue: _FakeBleMeshRadio_7(
          this,
          Invocation.getter(#radio),
        ),
      ) as _i6.BleMeshRadio);

  @override
  String get radioId => (super.noSuchMethod(
        Invocation.getter(#radioId),
        returnValue: _i17.dummyValue<String>(
          this,
          Invocation.getter(#radioId),
        ),
      ) as String);

  @override
  _i18.Connected<_i6.MeshRadio> copyWith({
    bool? isNewRadio,
    _i6.BleMeshRadio? radio,
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
        returnValue: _i17.dummyValue<_i18.Connected<_i6.MeshRadio>>(
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
      ) as _i18.Connected<_i6.MeshRadio>);
}

/// A class which mocks [Disconnected].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockDisconnected extends _i1.Mock implements _i18.Disconnected {
  MockDisconnected() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [RadioConnectorService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRadioConnectorService extends _i1.Mock
    implements _i19.RadioConnectorService {
  MockRadioConnectorService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.NotifierProviderRef<_i18.RadioConnectorState> get ref =>
      (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeNotifierProviderRef_0<_i18.RadioConnectorState>(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.NotifierProviderRef<_i18.RadioConnectorState>);

  @override
  _i18.RadioConnectorState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i17.dummyValue<_i18.RadioConnectorState>(
          this,
          Invocation.getter(#state),
        ),
      ) as _i18.RadioConnectorState);

  @override
  set state(_i18.RadioConnectorState? value) => super.noSuchMethod(
        Invocation.setter(
          #state,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i18.RadioConnectorState build() => (super.noSuchMethod(
        Invocation.method(
          #build,
          [],
        ),
        returnValue: _i17.dummyValue<_i18.RadioConnectorState>(
          this,
          Invocation.method(
            #build,
            [],
          ),
        ),
      ) as _i18.RadioConnectorState);

  @override
  _i10.Future<void> disconnect({String? errorMsg}) => (super.noSuchMethod(
        Invocation.method(
          #disconnect,
          [],
          {#errorMsg: errorMsg},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> connect(_i6.MeshRadio? radio) => (super.noSuchMethod(
        Invocation.method(
          #connect,
          [radio],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  bool updateShouldNotify(
    _i18.RadioConnectorState? previous,
    _i18.RadioConnectorState? next,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateShouldNotify,
          [
            previous,
            next,
          ],
        ),
        returnValue: false,
      ) as bool);
}
