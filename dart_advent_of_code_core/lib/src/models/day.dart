import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

abstract class DayProblems {
  final int day;

  final List<Problem<Object?>> problems;

  const DayProblems({required this.day, required this.problems});
}
