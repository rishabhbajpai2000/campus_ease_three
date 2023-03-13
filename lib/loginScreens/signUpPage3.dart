import 'package:campus_ease/loginScreens/signUpPage4.dart';
import 'package:flutter/material.dart';

class SignUpPage3 extends StatefulWidget {
  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
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
                  child: Column(children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What are you current Studying?",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    )),
                SizedBox(
                  height: 53,
                ),

                Container(
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffC8FF82),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Select Your Course'),
                    ),
                  ),
                ),
                // space between name box and photo

                // Middle image of the page.
                Image.asset("assets/images/loginscreen/SignUpPage3Image.png"),
                Expanded(
                  child: Container(),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage4()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFC8FF82),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                )
              ],)),
              // Name please , lets network and grow

            ],
          ),
        ),
      ),
    );
  }
}
