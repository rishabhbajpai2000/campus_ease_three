import 'package:campus_ease/constants.dart';
import 'package:campus_ease/loginScreens/signUpPage2_1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SignUpPage2 extends StatefulWidget {
  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  // Returns true if email address is in use.
  Future<bool> checkIfEmailInUse(String emailAddress) async {
    try {
      // Fetch sign-in methods for the email address
      final list =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);

      // In case list is not empty
      if (list.isNotEmpty) {
        // Return true because there is an existing
        // user using the email address
        Alert(
            context: context,
            title: "Error!",
            desc: "${"The email is already registered. Please use some other account."}",
            buttons: [
              DialogButton(
                  onPressed: () => Navigator.pop(context),
                  color: Color(0xFF92DCEC),
                  width: 120,
                  child: const Text(
                    "Go Back",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ))
            ]).show();
        return true;
      } else {
        // Return false because email address is not in use
        return false;
      }
    } catch (error) {
      // Handle error
      // ...
      print(error.toString());
      Alert(
          context: context,
          title: "Error!",
          desc: "${"There is some other error $error "}",
          buttons: [
            DialogButton(
                onPressed: () => Navigator.pop(context),
                color: Color(0xFF92DCEC),
                width: 120,
                child: const Text(
                  "Go Back",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ))
          ]).show();
      return true;
    }
  }

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
                child: Expanded(
                    child: Hero(
                  tag: "progressSlider",
                  child: Center(
                      child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    backgroundColor: Color(0xffC4C4C4),
                    value: 0.4,
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
                            "\nStudent ID, Let's go! \n",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )),

                      // we protect our community
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "We protect our community by making sure everyone on CampusEase is a student. \n \n",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )),

                      // box to enter user id
                      Container(
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              kUserEmail = value;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffDDDDE4),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter email ID'),
                          ),
                        ),
                      ),

                      // Middle image of the page.
                      Image.asset(
                          "assets/images/loginscreen/SignUpPage2Image.png"),

                      // space between image and next button
                      Expanded(
                        flex: 5,
                        child: Container(),
                      ),

                      // next button.
                      GestureDetector(
                        onTap: () async {
                          var status = await checkIfEmailInUse(kUserEmail);
                          if (status == true) {
                            print("the current email is already in use bruh");
                          } else if (status == false) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpPage2_1()));
                          } else {
                            print(status);
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFDDDDE4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "Next",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                      )
                    ],
                  )),
              // student Id lets go
            ],
          ),
        ),
      ),
    );
  }
}
