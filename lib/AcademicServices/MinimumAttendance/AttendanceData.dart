import 'package:intl/intl.dart';

class Attendance {
  late DateTime date;
  late int totalClasses;
  late int attendedClasses;

  Attendance(
      {required this.date,
      required this.totalClasses,
      required this.attendedClasses});

  String getDateFormatted(){
    return "${date.day} ${DateFormat("MMMM").format(date).toString().substring(0, 3)} ${date.year % 100}";
  }
}


List<Attendance> attendanceData = [
  Attendance(date: DateTime.parse("2023-03-01T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-02T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-03T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-04T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-05T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-06T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-07T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
  Attendance(date: DateTime.parse("2023-03-08T11:00:00.000Z"), totalClasses: 8, attendedClasses: 5),
];