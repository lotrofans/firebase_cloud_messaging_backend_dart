// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApnsConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApnsConfig _$ApnsConfigFromJson(Map<String, dynamic> json) {
  return ApnsConfig(
    headers: (json['headers'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    payload: (json['payload'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$ApnsConfigToJson(ApnsConfig instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'payload': instance.payload,
    };
