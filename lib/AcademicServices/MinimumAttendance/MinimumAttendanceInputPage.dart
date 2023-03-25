import 'package:flutter/material.dart';
class MinimumAttendanceInputPage extends StatefulWidget {
  const MinimumAttendanceInputPage({Key? key}) : super(key: key);

  @override
  State<MinimumAttendanceInputPage> createState() => _MinimumAttendanceInputPageState();
}

class _MinimumAttendanceInputPageState extends State<MinimumAttendanceInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Center(child: Text("Some Text thing"))
            ],
          ),
        ),
      ),
      
    );
  }
}
