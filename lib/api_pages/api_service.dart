// ignore_for_file: avoid_print, depend_on_referenced_packages, use_build_context_synchronously

import 'dart:convert';
import 'package:api_fainal_grap_attendance/api_pages/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'auth_model.dart';
import 'auth_reponse_model.dart';
import 'core.dart';

class ApiService {
  Future<AuthResponseModel> attemptLogIn(
      {required AuthModel signinModel, required BuildContext context}) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'api_key': '5267556B58703273357638792F423F45'
    };
    final requestData = jsonEncode(signinModel.toJson());

    var res =
    await http.post(Uri.parse(url), body: requestData, headers: headers);
    print(requestData);
    print(res.statusCode);
    print(res.body);
    if (res.statusCode == 200) {
      AuthResponseModel jwtResponseModel =
      AuthResponseModel.fromJson(jsonDecode(res.body));

      print(jwtResponseModel.token);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => HomePage(token: jwtResponseModel.token)));
      return jwtResponseModel;
    } else {
      String msg = AuthResponseModel.fromJson(jsonDecode(res.body)).message;

      if (msg.contains("JWT")) {}
      print(msg);

      throw Exception(msg);
    }
  }
}
