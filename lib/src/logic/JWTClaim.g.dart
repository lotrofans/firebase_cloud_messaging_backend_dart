// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JWTClaim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JWTClaim _$JWTClaimFromJson(Map<String, dynamic> json) {
  return JWTClaim(
    client_email: json['client_email'] as String?,
    client_id: json['client_id'] as String?,
    private_key_id: json['private_key_id'] as String?,
    private_key: json['private_key'] as String?,
  );
}

Map<String, dynamic> _$JWTClaimToJson(JWTClaim instance) => <String, dynamic>{
      'client_email': instance.client_email,
      'client_id': instance.client_id,
      'private_key_id': instance.private_key_id,
      'private_key': instance.private_key,
    };
