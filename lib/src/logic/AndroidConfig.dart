import 'AndroidNotification.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AndroidConfig.g.dart';

@JsonSerializable(nullable: true)
class AndroidConfig {
  ///An identifier of a group of messages that can be collapsed, so that only the last message gets sent when delivery can be resumed. A maximum of 4 different collapse keys is allowed at any given time.
  String collapse_key;

  ///Message priority. Can take "normal" and "high" values. For more information, see Setting the priority of a message.
  AndroidMessagePriority priority;

  ///How long (in seconds) the message should be kept in FCM storage if the device is offline. The maximum time to live supported is 4 weeks, and the default value is 4 weeks if not set. Set it to 0 if want to send the message immediately. In JSON format, the Duration type is encoded as a string rather than an object, where the string ends in the suffix "s" (indicating seconds) and is preceded by the number of seconds, with nanoseconds expressed as fractional seconds. For example, 3 seconds with 0 nanoseconds should be encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should be expressed in JSON format as "3.000000001s". The ttl will be rounded down to the nearest second.
  String ttl;

  ///Package name of the application where the registration token must match in order to receive the message.
  String restricted_package_name;

  ///Arbitrary key/value payload. If present, it will override google.firebase.fcm.v1.Message.data.
  //
  //An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  Map<String, String> data;

  ///Notification to send to android devices.
  AndroidNotification notification;

  factory AndroidConfig.fromJson(Map<String, dynamic> json) =>
      _$AndroidConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AndroidConfigToJson(this);

  AndroidConfig(
      {this.collapse_key,
      this.priority,
      this.ttl,
      this.restricted_package_name,
      this.data,
      this.notification});
}

enum AndroidMessagePriority {
  ///Default priority for data messages. Normal priority messages won't open network connections on a sleeping device, and their delivery may be delayed to conserve the battery. For less time-sensitive messages, such as notifications of new email or other data to sync, choose normal delivery priority.
  NORMAL,

  ///Default priority for notification messages. FCM attempts to deliver high priority messages immediately, allowing the FCM service to wake a sleeping device when possible and open a network connection to your app server. Apps with instant messaging, chat, or voice call alerts, for example, generally need to open a network connection and make sure FCM delivers the message to the device without delay. Set high priority if the message is time-critical and requires the user's immediate interaction, but beware that setting your messages to high priority contributes more to battery drain compared with normal priority messages.
  HIGH
}
