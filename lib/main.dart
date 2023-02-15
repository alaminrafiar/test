import 'package:flutter/material.dart';

import 'api_pages/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GV Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage());
  }
}
