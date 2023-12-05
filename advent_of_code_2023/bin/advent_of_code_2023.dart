import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:advent_of_code_2023/days/day_2/day_2_problems.dart';
import 'package:advent_of_code_2023/days/day_2/repos/io_day_2_repo.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

final _days = <DayProblems>{
  Day1Problems(day1repo: IODay1Repo()),
  Day2Problems(day2repo: IODay2Repo()),
};

void main() {
  AdventOfCodeProblemRunner.runProblems(_days);
}
