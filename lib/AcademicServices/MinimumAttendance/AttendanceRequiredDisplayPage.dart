import 'dart:ffi';

import 'package:flutter/material.dart';

class AttendanceRequiredDisplayPage extends StatefulWidget {
  const AttendanceRequiredDisplayPage({Key? key}) : super(key: key);

  @override
  State<AttendanceRequiredDisplayPage> createState() =>
      _AttendanceRequiredDisplayPageState();
}

class _AttendanceRequiredDisplayPageState
    extends State<AttendanceRequiredDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFFA9E793),
        title: Text(
          "Result",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(child: Container()),
              ResultCard(
                promptOne: 'Classes to be taken',
                numDays: 14,
                numLectures: 2,
              ),
              Expanded(child: Container()),
              ResultCard(
                  promptOne: "Affordable Leaves", numDays: 4, numLectures: 2),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFA9E793),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "Back",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  String promptOne = "";
  int numDays = 0;
  int numLectures = 0;

  ResultCard({
    super.key,
    required this.promptOne,
    required this.numDays,
    required this.numLectures,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Color(0XFF2DC162),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: Text(
                      "$promptOne",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffA9E793),
                          spreadRadius: 3,
                          offset: Offset(-4, -8), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "$numDays days,\n$numLectures lectures",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffB33939)),
                    ),
                  )),
            )
          ],
        ),
      ),
    )
      ],
    );
  }
}
