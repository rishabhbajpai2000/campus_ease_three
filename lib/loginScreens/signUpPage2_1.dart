import 'package:campus_ease/loginScreens/signUpPage3.dart';
import 'package:flutter/material.dart';

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
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Password",
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
                              hintText: '%^&**@****'),
                        ),
                      ),
                    ),
                    // password line
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Confirm Password",
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
                              hintText: '%^&**@****'),
                        ),
                      ),
                    ),

                    Image.asset(
                        "assets/images/loginscreen/LoginPageImage.png"),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage3()));
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