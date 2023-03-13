import 'package:campus_ease/loginScreens/signUpPage2.dart';
import 'package:flutter/material.dart';

class SignUpPage1 extends StatefulWidget {
  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // progress bar
              Expanded(
                flex: 1,
                  child: Hero(
                    tag: "progressSlider",
                    child: Center(
                        child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                backgroundColor: Color(0xffC4C4C4),
                value: 0.2,
              )),
                  )),

              Expanded(
                flex: 6,
                  child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name please! \nlet's network and grow!",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      )),
                  SizedBox(
                    height: 53,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFBD9D),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter Your Name'),
                    ),
                  ),
                  // space between name box and photo

                  // Middle image of the page.
                  Image.asset(
                      "assets/images/loginscreen/SignUpPage1Image.png"),
                  Expanded(
                    child: Container(),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage2()));
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFBD9D),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                  )
                ],
              )),
              // Name please , lets network and grow

            ],
          ),
        ),
      ),
    );
  }
}
