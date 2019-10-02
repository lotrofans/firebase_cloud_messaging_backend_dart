import 'package:json_annotation/json_annotation.dart';

part 'Notification.g.dart';

@JsonSerializable(nullable: true)
class Notification {
  ///The notification's title.
  String title;

  ///The notification's body text.
  String body;

  ///Contains the URL of an image that is going to be downloaded on the device and displayed in a notification. JPEG, PNG, BMP have full support across platforms. Animated GIF and video only work on iOS. WebP and HEIF have varying levels of support across platforms and platform versions. Android has 1MB image size limit. Quota usage and implications/costs for hosting image on Firebase Storage: https://firebase.google.com/pricing
  String image;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  Notification({this.title, this.body, this.image});
}
