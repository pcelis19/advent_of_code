import 'package:advent_of_code_2023/advent_of_code_2023.dart';

final _days = <DayProblems>{
  Day1Problems(day1repo: IODay1Repo()),
  Day2Problems(day2repo: IODay2Repo()),
  Day3Problems(day3repo: IODay3Repo())
};

void main() {
  AdventOfCodeProblemRunner.runProblems(_days);
}
