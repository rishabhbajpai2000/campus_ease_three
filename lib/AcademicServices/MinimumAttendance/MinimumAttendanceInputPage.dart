import 'package:campus_ease/AcademicServices/MinimumAttendance/AttendanceRequiredDisplayPage.dart';
import 'package:campus_ease/constants.dart';
import 'package:flutter/material.dart';

import '../../PersonalServices/BrokerConnectData.dart';

class MinimumAttendanceInputPage extends StatefulWidget {
  const MinimumAttendanceInputPage({Key? key}) : super(key: key);

  @override
  State<MinimumAttendanceInputPage> createState() =>
      _MinimumAttendanceInputPageState();
}

class _MinimumAttendanceInputPageState
    extends State<MinimumAttendanceInputPage> {
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
                            "${kSemStartDate.day}/${kSemStartDate.month}/${kSemStartDate.year % 100}",
                            style: TextStyle(fontSize: 20)),

                        // Todo: add the functionality to edit the date
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Icon(Icons.edit),
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
                            "${kExamStartDate.day}/${kExamStartDate.month}/${kExamStartDate.year % 100}",
                            style: TextStyle(fontSize: 20)),
                        // Todo: add the functionality to edit the date
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Icon(Icons.edit),
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
                          itemCount: brokersData.length,
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
                                    Text("Date/Date/Date $index"),
                                    Expanded(child: Container()),
                                    Text("data")
                                  ]),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),



              Container(
                width: double.infinity,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Colors.black,
                          child: Icon(
                            Icons.add,
                            size: 30,
                            weight: 20,
                            color: Colors.white,
                          )),
                    ),
                    Text(
                      "Add Class",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
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
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AttendanceRequiredDisplayPage()));
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
}
