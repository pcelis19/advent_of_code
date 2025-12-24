import 'dart:math';

import 'package:advent_of_code_2023/advent_of_code_2023.dart';

final _days = <DayProblems>{
  Day1Problems(day1repo: IODay1Repo()),
  Day2Problems(day2repo: IODay2Repo()),
  Day3Problems(day3repo: TestDay3Repo())
};

void main() {
  // AdventOfCodeProblemRunner.runProblems(_days);
  const int kTimesToRunExperiment = 100;
  const numberOfPeople = 23;
  const numberOfTimesRunExperiment = 100;
  var highestRate = -1.0;
  var timeOccurred = <int>[];
  print(
      //
      "numberOfPeople: $numberOfPeople\n"
      "numberOfTimesRunExperiment: $numberOfTimesRunExperiment");

  for (int i = 0; i < kTimesToRunExperiment; i++) {
    final timesTwoSharedBirthday =
        runExperiment(numberOfPeople: 23, numberOfTimesRunExperiment: 100);
    final rateTwoSharedBirthday =
        timesTwoSharedBirthday / numberOfTimesRunExperiment;
    if (rateTwoSharedBirthday > highestRate) {
      highestRate = rateTwoSharedBirthday;
      timeOccurred = [i];
    } else if (rateTwoSharedBirthday == highestRate) {
      timeOccurred.add(i);
    }
    print(
        //
        "($i) timesTwoSharedBirthday: $timesTwoSharedBirthday, rateTwoSharedBirthday: $rateTwoSharedBirthday");
  }
  print('HIGHEST_RATE: $highestRate, and occurred in $timeOccurred');
}

const kNumberofDays = 365;

int runExperiment(
    {required int numberOfPeople, required int numberOfTimesRunExperiment}) {
  int timesTwoSharedBirthday = 0;
  for (int i = 0; i < numberOfTimesRunExperiment; i++) {
    final didTwoShareBirthday = doesTwoShareBirthday(numberOfPeople);
    if (didTwoShareBirthday) {
      timesTwoSharedBirthday++;
    }
  }
  return timesTwoSharedBirthday;
}

bool doesTwoShareBirthday(int numberOfPeople) {
  final birthdays = <int>{};
  for (int i = 0; i < numberOfPeople; i++) {
    final _rand = Random();
    final personsBirthday = _rand.nextInt(kNumberofDays);
    if (birthdays.contains(personsBirthday)) {
      return true;
    } else {
      birthdays.add(personsBirthday);
    }
  }
  return false;
}
