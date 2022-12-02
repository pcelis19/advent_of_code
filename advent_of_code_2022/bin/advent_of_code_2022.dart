import 'package:advent_of_code_2022/lib.dart';

const _problems = [CalorieCounting()];

void main(List<String> arguments) async {
  await problemRunner(_problems[0]);
}

Future<void> problemRunner(Problem problem) async {
  await problem.solution();
}