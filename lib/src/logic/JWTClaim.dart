import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'JWTClaim.g.dart';

@JsonSerializable()
class JWTClaim {
  ///The email address of the service account.
  String? client_email;
  String? client_id;

  String? private_key_id;

  String? private_key;

  factory JWTClaim.fromJson(Map<String, dynamic> json) => _$JWTClaimFromJson(json);

  factory JWTClaim.from(File jsonFile) {
    return JWTClaim.fromJson(json.decode(jsonFile.readAsStringSync()));
  }

  Map<String, dynamic> toJson() => _$JWTClaimToJson(this);

  JWTClaim({this.client_email, this.client_id, this.private_key_id, this.private_key});
}
