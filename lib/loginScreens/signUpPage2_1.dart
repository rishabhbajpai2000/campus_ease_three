import 'package:campus_ease/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class SignUpPage2_1 extends StatefulWidget {
  @override
  State<SignUpPage2_1> createState() => _SignUpPage2_1State();
}

class _SignUpPage2_1State extends State<SignUpPage2_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Expanded(
                    child: Hero(
                  tag: "progressSlider",
                  child: Center(
                      child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    backgroundColor: Color(0xffC4C4C4),
                    value: 0.6,
                  )),
                )),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Please set your password",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )),

                    // email line
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    // enter email box
                    Container(
                      child: Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff92DCEC),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: '%^&**@****'),
                        ),
                      ),
                    ),
                    // password line
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    // enter password box
                    Container(
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            kUserPassword = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xff92DCEC),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: '%^&**@****'),
                        ),
                      ),
                    ),

                    Image.asset("assets/images/loginscreen/LoginPageImage.png"),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        try {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: kUserEmail, password: kUserPassword)
                              .then((value) async {
                            print("Logged In sucessfully");
                            // makning shared pref to true such that user will be redirected to home screen upon logging again.
                            var sharedPref =
                                await SharedPreferences.getInstance();
                            sharedPref.setBool("LOGGEDIN", true);

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                          });
                        } on Exception catch (e) {
                          print(e);
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF92DCEC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
