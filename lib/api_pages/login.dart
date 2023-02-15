import 'package:api_fainal_grap_attendance/api_pages/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'api_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                Image.asset(
                  "Assets/Images/Logo.png",
                  height: 178,
                  width: 186,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      labelText: "User-Id..",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      border: InputBorder.none
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter Employee ID";
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: "PassWord..",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 120),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      border: InputBorder.none
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Enter Password";
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  color: Colors.indigo,
                  onPressed: () {
                    var loginData = AuthModel(
                        employeeId: _usernameController.text,
                        password: _passwordController.text);

                    ApiService()
                        .attemptLogIn(signinModel: loginData, context: context);
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
