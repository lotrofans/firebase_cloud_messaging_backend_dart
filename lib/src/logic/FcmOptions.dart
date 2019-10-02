import 'package:json_annotation/json_annotation.dart';
part 'FcmOptions.g.dart';
@JsonSerializable(nullable: true)
class FcmOptions{
  String analytics_label;

  factory FcmOptions.fromJson(Map<String, dynamic> json) => _$FcmOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$FcmOptionsToJson(this);

  FcmOptions({this.analytics_label});

}