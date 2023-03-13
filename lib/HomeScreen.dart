import 'package:campus_ease/PersonalScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'AcademicScreen.dart';
import 'buttons.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  "We are there to help you!",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.left,
                ),
              ),

              // text below the help you
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Want help with academic, personal, or career goals?\nSimplify your college life with our all-in-one app!",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),

              // button 1 personal
              selectionButton(heading1: "Personal",
                  heading2: "I need help for my personal needs.",
                  shade: Color(0xffD3E9FF),
                  context: context,
                  onClickAction: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PersonalScreen()))
                  }),

              selectionButton(heading1: "Academics",
                  heading2: "I want help to excel in my academics ",
                  shade: Color(0xffD3E9FF),
                  context: context,
                  onClickAction: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AcademicScreen()))
                  }),
              selectionButton(heading1: "Career",
                  heading2: "I want help to excel in my career ",
                  shade: Color(0xffD3E9FF),
                  context: context,
                  onClickAction: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AcademicScreen()))
                  }),
              Expanded(child: Center(child: Image.asset(
                  "assets/images/homeScreen/homeScreenImage.png"))),
            ],
          ),
        ),
      ),
    );
  }
}
