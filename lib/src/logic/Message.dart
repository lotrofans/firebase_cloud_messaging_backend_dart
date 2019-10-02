import 'package:json_annotation/json_annotation.dart';

import 'AndroidConfig.dart';
import 'ApnsConfig.dart';
import 'FcmOptions.dart';
import 'Notification.dart';
import 'WebpushConfig.dart';

part 'Message.g.dart';

@JsonSerializable(nullable: true)
class Message {
  ///Output Only. The identifier of the message sent, in the format of projects/*/messages/{message_id}.
  String name;

  ///Input only. Arbitrary key/value payload. The key should not be a reserved word ("from", "message_type", or any word starting with "google" or "gcm").
  //
  //An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  Map<String, String> data;

  ///Input only. Basic notification template to use across all platforms.
  Notification notification;

  ///Input only. Android specific options for messages sent through FCM connection server.
  AndroidConfig android;
  WebpushConfig webpush;
  ApnsConfig apns;
  FcmOptions fcm_options;

  /// Registration token to send a message to.
  // Union field target can be only one of the following:
  ///Union field target. Required. Input only. Target to send a message to. target can be only one of token, topic or condition.
  String token;

  /// Topic name to send a message to, e.g. "weather". Note: "/topics/" prefix should not be provided.
  // Union field target can be only one of the following:
  ///Union field target. Required. Input only. Target to send a message to. target can be only one of token, topic or condition.
  String topic;

  /// Condition to send a message to, e.g. "'foo' in topics && 'bar' in topics".
  // Union field target can be only one of the following:
  ///Union field target. Required. Input only. Target to send a message to. target can be only one of token, topic or condition.
  String condition;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  Message(
      {this.name,
      this.data,
      this.notification,
      this.android,
      this.webpush,
      this.apns,
      this.fcm_options,
      this.token,
      this.topic,
      this.condition});

  @override
  String toString() {
    return 'Message{name: $name, data: $data, notification: $notification, android: $android, webpush: $webpush, apns: $apns, fcm_options: $fcm_options, token: $token, topic: $topic, condition: $condition}';
  }
}
