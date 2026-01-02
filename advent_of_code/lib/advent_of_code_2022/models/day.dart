import 'package:advent_of_code_2022/lib.dart';

abstract class DayProblems {
  final int day;

  final List<Problem<Object?>> problems;

  const DayProblems({required this.day, required this.problems});
}
