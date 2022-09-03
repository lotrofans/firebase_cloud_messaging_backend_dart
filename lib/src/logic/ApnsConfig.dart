import 'package:json_annotation/json_annotation.dart';

part 'ApnsConfig.g.dart';

@JsonSerializable()
class ApnsConfig {
  Map<String, String>? headers;
  Map<String, String>? payload;

  factory ApnsConfig.fromJson(Map<String, dynamic> json) => _$ApnsConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ApnsConfigToJson(this);

  ApnsConfig({this.headers, this.payload});
}
