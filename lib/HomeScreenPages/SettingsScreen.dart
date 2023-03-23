import 'dart:ffi';

import 'package:campus_ease/loginScreens/initialWelcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {
        FirebaseAuth.instance.signOut().then((value) async {
          print("signed Out");

          var sharedPref = await SharedPreferences.getInstance();
          sharedPref.setBool("LOGGEDIN", false);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));

        });
      },
      child: Container(
          color: Colors.lightBlueAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("LogOut"),
          )),
    ));
  }
}
