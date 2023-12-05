import 'dart:async';

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
      final startTime = DateTime.now();
      print('  Solving, part ${index.toString().padLeft(3, '0')}');
      final solution = await problem.solution();
      print('  The solution is: $solution');
      final endTime = DateTime.now();
      final secondsTook = endTime.difference(startTime).inMilliseconds;
      print('  The solution took $secondsTook ms to compute');
      index++;
    }
  }
}
