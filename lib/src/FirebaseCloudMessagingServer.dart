import 'dart:convert';
import 'logic/JWTClaim.dart';
import 'logic/Message.dart';
import 'logic/Send.dart';
import 'package:http/http.dart' as http;
import "package:googleapis_auth/auth_io.dart";

class FirebaseCloudMessagingServer {
  ///Firebase console:
  ///open settings > Service Accounts
  ///Generate New Private Key > Generate Key
  ///Fill JWTClaim with informations from this file, or load it wirh JWTClaim.from();
  JWTClaim jwtClaim;
  String projectId;
  ///Caches authCredentials(up to 1 hour)
  bool cacheAuth;
  AccessCredentials accessCredentials;
  FirebaseCloudMessagingServer(this.jwtClaim, this.projectId, {this.cacheAuth: true});

  Future<AccessCredentials> performAuth() async {
    var accountCredentials = ServiceAccountCredentials.fromJson({
      "private_key_id": "${jwtClaim.private_key_id}",
      "private_key": "${jwtClaim.private_key}",
      "client_email": "${jwtClaim.client_email}",
      "client_id": "${jwtClaim.client_id}",
      "type": "service_account"
    });
    var scopes = ["https://www.googleapis.com/auth/firebase.messaging"];
    var client = http.Client();
    accessCredentials = await obtainAccessCredentialsViaServiceAccount(accountCredentials, scopes, client);
    client.close();
    return accessCredentials;
  }

  Future<ServerResult> send(Send sendObject) async {
    return await _send(sendObject);
  }

  Future<List<ServerResult>> sendMessages(List<Send> sendObjects) async {
    List<ServerResult> results = List();
    for(Send sendObject in sendObjects){
      results.add((await _send(sendObject)));
    }
    return results;
  }

  Future<ServerResult> _send(Send sendObject) async {
    if(accessCredentials == null || DateTime.now().isAfter(accessCredentials.accessToken.expiry) || !cacheAuth){
      await performAuth();
    }
    var url = 'https://fcm.googleapis.com/v1/projects/$projectId/messages:send';
    var response = await http.post(url, headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${accessCredentials.accessToken.data}"
    }, body: json.encode(sendObject.toJson()));
    var successful = response.statusCode == 200;
    print("successful: $successful");
    var serverResult = ServerResult(successful, response.statusCode, successful ? Message.fromJson(json.decode(response.body)) : Message(), response.reasonPhrase);
    print(serverResult);
    return serverResult;
  }
}

class ServerResult {
  bool successful;
  int statusCode;
  Message messageSent;
  String errorPhrase;

  ServerResult(this.successful, this.statusCode, this.messageSent,
      this.errorPhrase);

  @override
  String toString() {
    return 'ServerResult{successful: $successful, statusCode: $statusCode, messageSent: $messageSent, errorPhrase: $errorPhrase}';
  }


}
