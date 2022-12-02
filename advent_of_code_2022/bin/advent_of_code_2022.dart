import 'package:advent_of_code_2022/days/day_1/day_1_problems.dart';
import 'package:advent_of_code_2022/lib.dart';
import 'package:advent_of_code_2022/models/day.dart';

final _days = <DayProblems>[
  Day1Problems(),
];

void main(List<String> arguments) async {
  await _problemRunner(_days[0]);
}

Future<void> _problemRunner(DayProblems day) async {
  var index = 1;
  for (final problem in day.problems) {
    print('Day ${day.day}');
    final solution = await problem.solution();
    print('part ${index.toString().padLeft(3, '0')}:\n\t$solution');
  }
}
