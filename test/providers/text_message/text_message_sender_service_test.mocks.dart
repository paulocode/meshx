// Mocks generated by Mockito 5.4.4 from annotations
// in multimesh/test/providers/text_message/text_message_sender_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;
import 'dart:typed_data' as _i9;

import 'package:mockito/mockito.dart' as _i1;
import 'package:multimesh/models/radio_configuration.dart' as _i3;
import 'package:multimesh/models/text_message.dart' as _i4;
import 'package:multimesh/models/text_message_status.dart' as _i15;
import 'package:multimesh/protobufs/generated/meshtastic/config.pb.dart'
    as _i12;
import 'package:multimesh/protobufs/generated/meshtastic/mesh.pb.dart' as _i13;
import 'package:multimesh/protobufs/generated/meshtastic/portnums.pb.dart'
    as _i8;
import 'package:multimesh/providers/radio_config/radio_config_service.dart'
    as _i11;
import 'package:multimesh/repository/text_message_repository.dart' as _i14;
import 'package:multimesh/services/interfaces/radio_reader.dart' as _i7;
import 'package:multimesh/services/interfaces/radio_writer.dart' as _i6;
import 'package:multimesh/services/queued_radio_writer.dart' as _i5;
import 'package:multimesh/services/text_message/text_message_stream_service.dart'
    as _i16;
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

class _FakeTextMessage_2 extends _i1.SmartFake implements _i4.TextMessage {
  _FakeTextMessage_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [QueuedRadioWriter].
///
/// See the documentation for Mockito's code generation for more information.
class MockQueuedRadioWriter extends _i1.Mock implements _i5.QueuedRadioWriter {
  MockQueuedRadioWriter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void setRadioWriter(_i6.RadioWriter? radioWriter) => super.noSuchMethod(
        Invocation.method(
          #setRadioWriter,
          [radioWriter],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setRadioReader(_i7.RadioReader? radioReader) => super.noSuchMethod(
        Invocation.method(
          #setRadioReader,
          [radioReader],
        ),
        returnValueForMissingStub: null,
      );

  @override
  int sendMeshPacket({
    required int? to,
    int? channel = 0,
    bool? wantAck = false,
    required _i8.PortNum? portNum,
    required _i9.Uint8List? payload,
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
          },
        ),
        returnValue: 0,
      ) as int);

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
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RadioConfigService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRadioConfigService extends _i1.Mock
    implements _i11.RadioConfigService {
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
  _i10.Future<void> setLoraConfig(
    _i12.Config_LoRaConfig? loraConfig, {
    bool? upload = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setLoraConfig,
          [loraConfig],
          {#upload: upload},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> setMyNodeInfo(
    _i13.NodeInfo? myNodeInfo, {
    bool? upload = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #setMyNodeInfo,
          [myNodeInfo],
          {#upload: upload},
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> setMyNodeNum(int? myNodeNum) => (super.noSuchMethod(
        Invocation.method(
          #setMyNodeNum,
          [myNodeNum],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

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

/// A class which mocks [TextMessageRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTextMessageRepository extends _i1.Mock
    implements _i14.TextMessageRepository {
  MockTextMessageRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<List<List<_i4.TextMessage>>> getByNodeNum() =>
      (super.noSuchMethod(
        Invocation.method(
          #getByNodeNum,
          [],
        ),
        returnValue: _i10.Future<List<List<_i4.TextMessage>>>.value(
            <List<_i4.TextMessage>>[]),
      ) as _i10.Future<List<List<_i4.TextMessage>>>);

  @override
  _i10.Future<int> add({required _i4.TextMessage? textMessage}) =>
      (super.noSuchMethod(
        Invocation.method(
          #add,
          [],
          {#textMessage: textMessage},
        ),
        returnValue: _i10.Future<int>.value(0),
      ) as _i10.Future<int>);

  @override
  _i10.Future<void> updateStatusByPacketId({
    required _i15.TextMessageStatus? status,
    required int? packetId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateStatusByPacketId,
          [],
          {
            #status: status,
            #packetId: packetId,
          },
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<_i4.TextMessage> getByPacketId({required int? packetId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getByPacketId,
          [],
          {#packetId: packetId},
        ),
        returnValue: _i10.Future<_i4.TextMessage>.value(_FakeTextMessage_2(
          this,
          Invocation.method(
            #getByPacketId,
            [],
            {#packetId: packetId},
          ),
        )),
      ) as _i10.Future<_i4.TextMessage>);

  @override
  _i10.Future<List<_i4.TextMessage>> getDirectMessagesBy({
    required int? myNodeNum,
    required int? otherNodeNum,
    required int? limit,
    int? offset = 0,
    required int? owner,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDirectMessagesBy,
          [],
          {
            #myNodeNum: myNodeNum,
            #otherNodeNum: otherNodeNum,
            #limit: limit,
            #offset: offset,
            #owner: owner,
          },
        ),
        returnValue:
            _i10.Future<List<_i4.TextMessage>>.value(<_i4.TextMessage>[]),
      ) as _i10.Future<List<_i4.TextMessage>>);

  @override
  _i10.Future<List<_i4.TextMessage>> getBy({
    required int? toNode,
    required int? channel,
    required int? limit,
    int? offset = 0,
    required int? owner,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBy,
          [],
          {
            #toNode: toNode,
            #channel: channel,
            #limit: limit,
            #offset: offset,
            #owner: owner,
          },
        ),
        returnValue:
            _i10.Future<List<_i4.TextMessage>>.value(<_i4.TextMessage>[]),
      ) as _i10.Future<List<_i4.TextMessage>>);

  @override
  _i10.Future<int> countDirectMessagesBy({
    required int? myNodeNum,
    required int? otherNodeNum,
    required int? owner,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #countDirectMessagesBy,
          [],
          {
            #myNodeNum: myNodeNum,
            #otherNodeNum: otherNodeNum,
            #owner: owner,
          },
        ),
        returnValue: _i10.Future<int>.value(0),
      ) as _i10.Future<int>);

  @override
  _i10.Future<int> count({
    required int? channel,
    required int? toNode,
    required int? owner,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
          {
            #channel: channel,
            #toNode: toNode,
            #owner: owner,
          },
        ),
        returnValue: _i10.Future<int>.value(0),
      ) as _i10.Future<int>);
}

/// A class which mocks [TextMessageStreamService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTextMessageStreamService extends _i1.Mock
    implements _i16.TextMessageStreamService {
  MockTextMessageStreamService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Stream<List<_i4.TextMessage>> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i10.Stream<List<_i4.TextMessage>>.empty(),
      ) as _i10.Stream<List<_i4.TextMessage>>);

  @override
  _i10.Future<bool> get allMessagesLoaded => (super.noSuchMethod(
        Invocation.getter(#allMessagesLoaded),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<void> loadOlderMessages() => (super.noSuchMethod(
        Invocation.method(
          #loadOlderMessages,
          [],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  _i10.Future<void> onNewMessage(_i4.TextMessage? textMessage) =>
      (super.noSuchMethod(
        Invocation.method(
          #onNewMessage,
          [textMessage],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);

  @override
  List<_i4.TextMessage> getMessages() => (super.noSuchMethod(
        Invocation.method(
          #getMessages,
          [],
        ),
        returnValue: <_i4.TextMessage>[],
      ) as List<_i4.TextMessage>);

  @override
  void disposeOldMessages() => super.noSuchMethod(
        Invocation.method(
          #disposeOldMessages,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
