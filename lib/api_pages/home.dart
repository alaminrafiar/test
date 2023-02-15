import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart'; //HomePage
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../ui/profile_screen.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String token}) : super(key: key);

  @override
  State<HomePage> createState() => _AttendanceState();
}

class _AttendanceState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.format_align_left,color: Color(0xFF192855),),
          onPressed: (){
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 5,color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Assets/Images/Rafi1.png"),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Md Alamin Rafi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("EID : GV003",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) =>  Profile()));
                },
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                    ],
                  ),
                  child: Center(
                    child: Text("Profile",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                    ],
                  ),
                  child: Center(
                    child: Text("Change Password",style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 270),
              TextButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  LoginPage()));
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LogOut",style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold),),
                    Icon(Icons.forward),
                  ],
                ),
              ),
              Image.asset("Assets/Images/Logo.png",height: 50,width: 50,),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.orange,
      ),

    );
  }
}

