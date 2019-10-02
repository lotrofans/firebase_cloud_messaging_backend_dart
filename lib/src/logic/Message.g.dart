// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    name: json['name'] as String,
    data: (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    notification: json['notification'] == null
        ? null
        : Notification.fromJson(json['notification'] as Map<String, dynamic>),
    android: json['android'] == null
        ? null
        : AndroidConfig.fromJson(json['android'] as Map<String, dynamic>),
    webpush: json['webpush'] == null
        ? null
        : WebpushConfig.fromJson(json['webpush'] as Map<String, dynamic>),
    apns: json['apns'] == null
        ? null
        : ApnsConfig.fromJson(json['apns'] as Map<String, dynamic>),
    fcm_options: json['fcm_options'] == null
        ? null
        : FcmOptions.fromJson(json['fcm_options'] as Map<String, dynamic>),
    token: json['token'] as String,
    topic: json['topic'] as String,
    condition: json['condition'] as String,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
      'notification': instance.notification,
      'android': instance.android,
      'webpush': instance.webpush,
      'apns': instance.apns,
      'fcm_options': instance.fcm_options,
      'token': instance.token,
      'topic': instance.topic,
      'condition': instance.condition,
    };
