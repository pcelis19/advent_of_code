import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

final _days = <DayProblems>{
  Day1(day1repo: IODay1Repo()),
};

void main() {
  AdventOfCodeProblemRunner.runProblems(_days);
}
