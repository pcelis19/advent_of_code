import 'package:advent_of_code/advent_of_code.dart';

/// made so that no external can mixin `AdventOfCodeProblemRunner`
abstract class _Disqualifier {}

// ignore: library_private_types_in_public_api
mixin AdventOfCodeService on _Disqualifier {
  static Future<void> runYears(
    Iterable<AdventOfCodeYear> years, {
    required Set<AOCYear> skipYears,
  }) async {
    years = years.where((aocYear) => !skipYears.contains(aocYear.year));
    final aocYears = years.map((aocYear) => aocYear.year.name);
    print('Running the following years: $aocYears');

    for (final year in years) {
      print('Running ${year.year.name}');
      await _runProblems(year.days);
    }
  }

  static Future<void> _runProblems(Iterable<AdventOfCodeDay> days) async {
    for (final day in days) {
      await _problemRunner(day);
    }
  }

  static Future<void> _problemRunner(AdventOfCodeDay day) async {
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
