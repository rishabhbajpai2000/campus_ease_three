import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'buttons.dart';

class AcademicScreen extends StatefulWidget {
  @override
  State<AcademicScreen> createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          padding: EdgeInsets.all(20),
          backgroundColor: Color(0xff48484A),
          color: Colors.white,
          activeColor: Colors.white,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.explore,
              text: "Home",
            ),
            GButton(
              icon: Icons.notifications,
              text: "Notifications",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            )
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // we are there to help you
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Hi there!",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),

              // text below the help you
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Here are some of the ways you can find help to grow in your studies.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),

              // button 1 personal
              selectionButton(
                  heading1: "Attendance Calculator",
                  heading2: "Attendance made easy. Achieve your goals. ",
                  shade: Color(0xffB7E5EF),
                  context: context,
                  onClickAction: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AcademicScreen()))
                      }),

              selectionButton(
                  heading1: "Ratings ",
                  heading2: "Find the best mentors for your journey",
                  shade: Color(0xffE48DDC),
                  context: context,
                  onClickAction: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AcademicScreen()))
                  }),
              Expanded(
                  child: Center(
                      child: Image.asset("assets/images/academicImage.png"))),
            ],
          ),
        ),
      ),
    );
  }
}
