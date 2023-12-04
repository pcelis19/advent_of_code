import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

abstract class DayProblems {
  final int day;

  final Iterable<Problem> problems;

  const DayProblems({required this.day, required this.problems});
}
