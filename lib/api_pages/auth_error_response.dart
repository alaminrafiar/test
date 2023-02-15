// To parse this JSON data, do
//
//     final authErrorResponseModel = authErrorResponseModelFromJson(jsonString);

import 'dart:convert';

AuthErrorResponseModel authErrorResponseModelFromJson(String str) =>
    AuthErrorResponseModel.fromJson(json.decode(str));

String authErrorResponseModelToJson(AuthErrorResponseModel data) =>
    json.encode(data.toJson());

class AuthErrorResponseModel {
  AuthErrorResponseModel({
    required this.status,
    required this.errors,
  });

  bool status;
  List<Error> errors;

  factory AuthErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthErrorResponseModel(
        status: json["status"],
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
    "status": status,
    "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
  };
}

class Error {
  Error({
    required this.field,
    required this.message,
  });

  String field;
  String message;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    field: json["field"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "field": field,
    "message": message,
  };
}
