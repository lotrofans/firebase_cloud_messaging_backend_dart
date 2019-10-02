import 'package:json_annotation/json_annotation.dart';

import 'Message.dart';

part 'Send.g.dart';

@JsonSerializable(nullable: true)
class Send {
  bool validate_only;
  Message message;

  factory Send.fromJson(Map<String, dynamic> json) => _$SendFromJson(json);

  Map<String, dynamic> toJson() => _$SendToJson(this);

  Send({this.validate_only: false, this.message});
}
