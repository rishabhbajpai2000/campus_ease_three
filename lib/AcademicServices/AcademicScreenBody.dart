import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AcademicScreen.dart';
import '../buttons.dart';

class AcademicScreenBody extends StatelessWidget {
  const AcademicScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
