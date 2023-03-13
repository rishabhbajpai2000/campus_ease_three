import 'package:campus_ease/loginScreens/LoginPage.dart';
import 'package:campus_ease/loginScreens/signUpPage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _loginScreenOneState();
}

class _loginScreenOneState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
      'assets/images/loginscreen/welcomeScreenImage1.svg',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: [
              // welcome to campus Ease
              Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome to \nCampusEase",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),

              SizedBox(
                height: 10,
              ),

              // Illustration one of blue color
              svg,
              // photo of college students
              Expanded(
                  flex: 3,
                  child: Image.asset(
                      "assets/images/loginscreen/welcomeScreenimage2.png")),

              // create an account button
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpPage1()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF92DCEC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("CREATE AN ACCOUNT")),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // login button
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF92DCEC),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text("LOGIN")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
