import 'package:campus_ease/HomeScreenPages/HomeScreenBody.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'AcademicServices/AcademicScreenBody.dart';
import 'HomeScreenPages/NotificationsScreen.dart';
import 'HomeScreenPages/ProfileScreen.dart';
import 'HomeScreenPages/SettingsScreen.dart';

class AcademicScreen extends StatefulWidget {
  @override
  State<AcademicScreen> createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen> {
  int kSelectedIndexBottomNavigationBar = 4;

  List<Widget> bottomScreens = <Widget>[
    HomeScreenBody(),
    NotificationScreen(),
    ProfileScreen(),
    SettingsScreen(),
    AcademicScreenBody()
  ];
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
        ],

        onTabChange: (index) {
          setState(() {
            print("the botton index $index was pressed. \n \n \n \n \n ");
            kSelectedIndexBottomNavigationBar = index;
          });
        },
        selectedIndex: kSelectedIndexBottomNavigationBar,

      ),
      // bottomNavigationBar: NavigationBarBottom(),
      body: SafeArea(
        child: bottomScreens.elementAt(kSelectedIndexBottomNavigationBar),
      ),
    );
  }
}

