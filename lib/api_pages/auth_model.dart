// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  AuthModel({
    required this.employeeId,
    required this.password,
  });

  String employeeId;
  String password;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    employeeId: json["employee_id"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "employee_id": employeeId,
    "password": password,
  };
}
