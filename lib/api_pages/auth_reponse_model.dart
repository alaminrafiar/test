// To parse this JSON data, do
//
//     final authResponseModel = authResponseModelFromJson(jsonString);

import 'dart:convert';

AuthResponseModel authResponseModelFromJson(String str) =>
    AuthResponseModel.fromJson(json.decode(str));

String authResponseModelToJson(AuthResponseModel data) =>
    json.encode(data.toJson());

class AuthResponseModel {
  AuthResponseModel({
    required this.status,
    required this.message,
    required this.token,
  });

  bool status;
  String message;
  String token;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        status: json["status"],
        message: json["message"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "token": token,
  };
}
