import 'package:campus_ease/HomeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      "Login to your account ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),

              // email line
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Email Address",
                  style: TextStyle(
                    fontSize: 18,
                  ),),
                ),
              ),
              // enter email box
              Container(
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff92DCEC),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'email'),
                  ),
                ),
              ),
             // password line
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Password",
                  style: TextStyle(fontSize: 18),),
                ),
              ),
              // enter password box
              Container(
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff92DCEC),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'password'),
                  ),
                ),
              ),

              Expanded(child: Container()),
              Image.asset(
                  "assets/images/loginscreen/LoginPageImage.png"),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF92DCEC),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
