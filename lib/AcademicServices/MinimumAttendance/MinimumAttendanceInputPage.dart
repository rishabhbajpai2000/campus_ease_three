import 'package:campus_ease/AcademicServices/MinimumAttendance/AttendanceRequiredDisplayPage.dart';
import 'package:campus_ease/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

import 'AttendanceData.dart';

class MinimumAttendanceInputPage extends StatefulWidget {
  const MinimumAttendanceInputPage({Key? key}) : super(key: key);

  @override
  State<MinimumAttendanceInputPage> createState() =>
      _MinimumAttendanceInputPageState();
}

class _MinimumAttendanceInputPageState
    extends State<MinimumAttendanceInputPage> {
  var value;
  int _attendedClasses = 5;
  int _totalClasses = 8;
  Future<DateTime> _showDatePicker() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));

    if (picked != null) {
      return picked;
    }
    return DateTime(2025);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFFB7E5EF),
        title: Text(
          "Attendance Calculator",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Semester Starts",
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(child: Container()),
                        Text(
                            "${kSemStartDate.day} ${DateFormat("MMMM").format(kSemStartDate).toString().substring(0, 3)} ${kSemStartDate.year % 100}",
                            style: TextStyle(fontSize: 20)),
                        GestureDetector(
                          onTap: () async {
                            DateTime pickedDate = await _showDatePicker();
                            setState(() {
                              kSemStartDate = pickedDate;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Icon(Icons.edit),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Exam Starts",
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(child: Container()),
                        Text(
                            "${kExamStartDate.day} ${DateFormat("MMMM").format(kExamStartDate).toString().substring(0, 3)} ${kExamStartDate.year % 100}",
                            style: TextStyle(fontSize: 20)),
                        GestureDetector(
                          onTap: () async {
                            DateTime pickedDate = await _showDatePicker();
                            setState(() {
                              kExamStartDate = pickedDate;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Icon(Icons.edit),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  physics: const ScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: attendanceData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF92DCEC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Text(
                                        "${attendanceData[index].getDateFormatted()}"),
                                    Expanded(child: Container()),
                                    Text(
                                        "${attendanceData[index].attendedClasses} | ${attendanceData[index].totalClasses}")
                                  ]),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF92DCEC),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Classes attended on ${getCurrentDate()}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          NumberPicker(
                            value: _attendedClasses,
                            minValue: 0,
                            maxValue: 10,
                            onChanged: (value) {
                              setState(() => _attendedClasses = value);
                              print("Attended classes  $_attendedClasses");
                            },
                          ),
                          Text("|"),
                          NumberPicker(
                            value: _totalClasses,
                            minValue: 0,
                            maxValue: 10,
                            onChanged: (value) =>
                                setState(() => _totalClasses = value),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  attendanceData.add(Attendance(
                                      date: DateTime.now(),
                                      totalClasses: _totalClasses,
                                      attendedClasses: _attendedClasses));
                                });
                              },
                              child: Text("Submit"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Text(
                  "For us to calculate your attendance,it is mandatory  for you to update the number of classes here daily.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AttendanceRequiredDisplayPage()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF92DCEC),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 18),
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

  getCurrentDate() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return "${date.day} ${DateFormat("MMMM").format(date).toString().substring(0, 3)} ${date.year % 100}";
  }
}
