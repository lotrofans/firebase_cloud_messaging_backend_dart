import 'package:json_annotation/json_annotation.dart';

part 'WebpushConfig.g.dart';

@JsonSerializable(nullable: true)
class WebpushConfig {
  Map<String, String> headers;
  Map<String, String> data;
  Map<String, String> notification;

  factory WebpushConfig.fromJson(Map<String, dynamic> json) =>
      _$WebpushConfigFromJson(json);

  Map<String, dynamic> toJson() => _$WebpushConfigToJson(this);

  WebpushConfig({this.headers, this.data, this.notification});
}
