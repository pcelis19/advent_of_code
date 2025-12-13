import 'package:advent_of_code_2023/advent_of_code_2023.dart';

final _days = <DayProblems>{
  // Day1Problems(day1repo: IODay1Repo()),
  // Day2Problems(day2repo: IODay2Repo()),
  // Day3Problems(day3repo: TestDay3Repo()),
  Aoc2025Day1Solutions(repo: Aoc2025IoDay1Repo()),
};

void main() {
  AdventOfCodeProblemRunner.runProblems(_days);
}
