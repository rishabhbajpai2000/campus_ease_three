import 'package:campus_ease/Home.dart';
import 'package:campus_ease/loginScreens/initialWelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AcademicServices/MinimumAttendance/SemStartDateInputPage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLoggedIn = prefs.getBool('LOGGEDIN');
  print(isLoggedIn.toString());
  runApp(MaterialApp(home: isLoggedIn == true ? Home() : WelcomeScreen()));

  // runApp(const MaterialApp(home: SemStartDateInputPage()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen()
      );
  }

}




