String kUserName = "";
String kUserEmail = "";
String kUserPassword = "";
String? kUserCourse = "B.Tech1";

// Minimum attendance
DateTime kSemStartDate =
    DateTime(2023, 2, 6); // need to be taken when user logs in for first time
DateTime kExamStartDate = DateTime(2023, 2, 28); // same as above.
int kActualClassesHappened =
    0; // this will update as the student will enter the data.
int kTotalClassesNotTaken = 0;
double kRequiredAttendance = 75.0;
