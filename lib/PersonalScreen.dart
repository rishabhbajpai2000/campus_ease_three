import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'HomeScreenPages/NotificationsScreen.dart';
import 'HomeScreenPages/ProfileScreen.dart';
import 'HomeScreenPages/SettingsScreen.dart';
import 'PersonalServices/PersonalScreenBody.dart';
class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  int kSelectedIndexBottomNavigationBar = 0;

  List<Widget> bottomScreens = <Widget>[
    PersonalScreenBody(),
    NotificationScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:GNav(
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
      body: SafeArea(
        child: bottomScreens.elementAt(kSelectedIndexBottomNavigationBar),
      ),
    );
  }
}

