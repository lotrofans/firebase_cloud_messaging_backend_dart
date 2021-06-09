// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WebpushConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebpushConfig _$WebpushConfigFromJson(Map<String, dynamic> json) {
  return WebpushConfig(
    headers: (json['headers'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    data: (json['data'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    notification: (json['notification'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$WebpushConfigToJson(WebpushConfig instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'data': instance.data,
      'notification': instance.notification,
    };
