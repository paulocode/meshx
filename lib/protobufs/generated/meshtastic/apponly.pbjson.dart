//
//  Generated code. Do not modify.
//  source: meshtastic/apponly.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use channelSetDescriptor instead')
const ChannelSet$json = {
  '1': 'ChannelSet',
  '2': [
    {
      '1': 'settings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.meshtastic.ChannelSettings',
      '10': 'settings'
    },
    {
      '1': 'lora_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.meshtastic.Config.LoRaConfig',
      '10': 'loraConfig'
    },
  ],
};

/// Descriptor for `ChannelSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSetDescriptor = $convert.base64Decode(
    'CgpDaGFubmVsU2V0EjcKCHNldHRpbmdzGAEgAygLMhsubWVzaHRhc3RpYy5DaGFubmVsU2V0dG'
    'luZ3NSCHNldHRpbmdzEj4KC2xvcmFfY29uZmlnGAIgASgLMh0ubWVzaHRhc3RpYy5Db25maWcu'
    'TG9SYUNvbmZpZ1IKbG9yYUNvbmZpZw==');
