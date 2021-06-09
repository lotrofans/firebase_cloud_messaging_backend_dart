// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Send.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Send _$SendFromJson(Map<String, dynamic> json) {
  return Send(
    validate_only: json['validate_only'] as bool?,
    message: json['message'] == null
        ? null
        : Message.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SendToJson(Send instance) => <String, dynamic>{
      'validate_only': instance.validate_only,
      'message': instance.message,
    };
