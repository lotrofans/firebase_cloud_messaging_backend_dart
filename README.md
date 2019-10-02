Send messages with Firebase Cloud Messaging from your dart backend!

Created using the HTTPv1 API of Firebase Cloud Messaging - you can find more on their [website].

[website]: https://firebase.google.com/docs/reference/fcm/rest/v1/projects.messages

Not affiliated in any way with the official Firebase team or Google.

## Usage

A simple usage example:

```dart
import 'package:firebase_cloud_messaging_backend/firebase_cloud_messaging_backend.dart';

main() async{
  var server = FirebaseCloudMessagingServer(
      JWTClaim(
          client_email:
              "$clientEmail",
          client_id: "$clientId",
          private_key: authKey,
          private_key_id: "$privateKeyId"),
      "$projectId");

  var result = await server.send(Send(
      validate_only: false,
      message: Message(
          notification: Notification(
              title: "New content:", body: "John added something new!"),
          android: AndroidConfig(
              notification: AndroidNotification(
                  icon: "ic_notification", color: "#009999")),
          token: token)));
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
