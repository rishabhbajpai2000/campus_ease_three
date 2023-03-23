import '../../constants.dart';

main() {
  DateTime now = DateTime.now();
  DateTime todayDate = DateTime(now.year, now.month, now.day);
  // DateTime startDate = now.isAfter(kSemStartDate) ? todayDate : kSemStartDate;

  DateTime startDate = DateTime(2023, 2, 10);
  kActualClassesHappened = 32; // there variables will be updated likewise
  kTotalClassesNotTaken = 8;
  int totalClassesPredicted =
      findExpectedClasses(startDate, kExamStartDate) + kActualClassesHappened;
  int requiredClasses =
      (kRequiredAttendance / 100 * totalClassesPredicted).round();  //Todo: we need to use floor
  int totalLeavesPossible = totalClassesPredicted - requiredClasses;
  int leavesPossibleFromNow = totalLeavesPossible - kTotalClassesNotTaken;

 // TODO: need to write some base cases if the user is not able to enter the data correctly
  print("The date on which calculation was made");
  print(startDate);
  print("Total Number of days classes are going to take place. ");
  print(totalClassesPredicted/8);
  print("The total number of required classes are ");
  print(requiredClasses/8);
  print("Total number of leaves possible.");
  print(leavesPossibleFromNow/8);
}

int findExpectedClasses(DateTime kTodayDate, DateTime kExamStartDate) {

  int totalExpectedDays =
      getDifferenceWithoutWeekends(kTodayDate, kExamStartDate);
  int totalExpectedClasses = totalExpectedDays * 8;
  return totalExpectedClasses;
}

// The function definition is taken from here.
// https://stackoverflow.com/questions/59529122/dart-how-to-find-number-of-days-between-two-dates-excluding-weekend-or-predicat
// calculating number of working days between start date and end date.
int getDifferenceWithoutWeekends(DateTime startDate, DateTime endDate) {
  int nbDays = 0;
  DateTime currentDay = startDate;
  while (currentDay.isBefore(endDate)) {
    currentDay = currentDay.add(Duration(days: 1));
    if (currentDay.weekday != DateTime.saturday &&
        currentDay.weekday != DateTime.sunday) {
      nbDays += 1;
    }
  }
  return nbDays;
}
