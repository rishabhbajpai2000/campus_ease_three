import 'package:campus_ease/HomeScreen.dart';
import 'package:flutter/material.dart';

class SignUpPage4 extends StatefulWidget {
  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
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
                            value: 0.8,
                          )),
                    )),
              ),

              Expanded(
                  flex: 6,
                  child: Column(children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Select Year!",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )),
                  SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFEDC70),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                              "1st Year",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFEDC70),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                              "2nd Year",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFEDC70),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                              "3rd Year",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFEDC70),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                              "4th Year",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ),

                    // space between name box and photo

                    // Middle image of the page.
                    Image.asset("assets/images/loginscreen/SignUpPage4Image.png"),
                    Expanded(
                      child: Container(),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
