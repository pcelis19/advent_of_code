import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

/// made so that no external can mixin `AdventOfCodeProblemRunner`
abstract class _Disqualifier {}

// ignore: library_private_types_in_public_api
mixin AdventOfCodeProblemRunner on _Disqualifier {
  static Future<void> runProblems(Iterable<DayProblems> days) async {
    for (final day in days) {
      await _problemRunner(day);
    }
  }

  static Future<void> _problemRunner(DayProblems day) async {
    var index = 1;
    print('Day ${day.day}');
    for (final problem in day.problems) {
      final solution = await problem.solution();
      print(
        '  Part ${index.toString().padLeft(3, '0')}\'s solution is: $solution',
      );
      index++;
    }
  }
}
