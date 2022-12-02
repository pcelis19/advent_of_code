import 'package:advent_of_code_2022/lib.dart';

final _days = <DayProblems>[
  Day1Problems(),
  Day2Problems(),
];

void main(List<String> arguments) async {
  await _problemRunner(_days[1]);
}

Future<void> _problemRunner(DayProblems day) async {
  var index = 1;
  print('Day ${day.day}');
  for (final problem in day.problems) {
    final solution = await problem.solution();
    print('  Part ${index.toString().padLeft(3, '0')}: $solution');
    index++;
  }
}
