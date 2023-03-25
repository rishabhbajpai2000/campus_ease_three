import 'package:campus_ease/AcademicServices/MinimumAttendance/ExamStartDateInputPage.dart';
import 'package:campus_ease/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SemStartDateInputPage extends StatefulWidget {
  const SemStartDateInputPage({Key? key}) : super(key: key);

  @override
  State<SemStartDateInputPage> createState() => _SemStartDateInputPageState();
}

class _SemStartDateInputPageState extends State<SemStartDateInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Hero(
                    tag: "progressSlider",
                    child: Center(
                        child: LinearProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                      backgroundColor: Color(0xffC4C4C4),
                      value: 0.8,
                    )),
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "When did your \nSemester Start?",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "We need this to calculate your attendance. You may change it later. "),
                      GestureDetector(
                        onTap: _showDatePicker,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                                child: Text(kSemStartDate.day.toString(),style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(DateFormat("MMMM").format(kSemStartDate).toString(), style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(kSemStartDate.year.toString(), style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text("Note: For us to calculate your attendace, it is mandatory for you to update the number of classes here daily.",style: TextStyle(fontSize: 10),),
                      Expanded(child: Container()),
                      Image.asset("assets/images/MinimumAttendanceInputPageImage.png"),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => ExamStartDateInputPage()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFF9C9CFE),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                                "Next",
                                style: TextStyle(fontSize: 18),
                              )),
                        ),
                      )

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030)).then((value){
          setState(() {
            kSemStartDate = value!;
          });
    });
  }
}
