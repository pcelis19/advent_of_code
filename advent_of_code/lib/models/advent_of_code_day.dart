import 'package:advent_of_code/advent_of_code.dart';

abstract class AdventOfCodeDay {
  final AOCDay day;

  final Iterable<AdventOfCodeProblem> problems;

  const AdventOfCodeDay({required this.day, required this.problems});
}
