import 'package:campus_ease/Home.dart';
import 'package:campus_ease/loginScreens/initialWelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLoggedIn = prefs.getBool('LOGGEDIN');
  print("yaara seeli seeli " + isLoggedIn.toString());
  runApp(MaterialApp(home: isLoggedIn == null ? WelcomeScreen() : Home()));
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen()
      );
  }

  Future<Widget> giveReleventScreen() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool("LOGGEDIN");

    if (isLoggedIn != null){
      if (isLoggedIn){
        return Home();
      }
      else{
        return WelcomeScreen();
      }
    }
    else{
      return WelcomeScreen();
    }
  }
}
