import 'package:firebase_cloud_messaging_backend/firebase_cloud_messaging_backend.dart';

class Example {
  String clientEmail = "The email address of the service account";
  String clientId = "The id of the client";
  String authKey =
      "Your private key - warning: confidential. Use the complete .pem like content";
  String privateKeyId = "Your private key id";
  String projectId = "Your project id";
  String token = "The token of the device/user you want to send a message to";

  void main() async {
    var server = FirebaseCloudMessagingServer(
        JWTClaim(
            client_email: "$clientEmail",
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
    print(result.successful);
  }
}
