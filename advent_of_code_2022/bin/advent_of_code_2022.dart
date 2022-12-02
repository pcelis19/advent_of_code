import 'package:advent_of_code_2022/lib.dart';

const _problems = <Problem<Object?>>[CalorieCounting()];

void main(List<String> arguments) async {
  await _problemRunner(_problems[0]);
}

Future<void> _problemRunner(Problem<Object?> problem) async {
  final solution = await problem.solution();
  print(solution);
}
