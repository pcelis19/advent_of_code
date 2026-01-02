import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:meta/meta.dart';

class Aoc2025Day1Solutions extends DayProblems {
  @protected
  final IAoc2025Day1Repo repo;
  Aoc2025Day1Solutions({
    required this.repo,
  }) : super(day: 1, problems: [
          Aoc2025Day1Part1Solution(repo: repo),
          Aoc2025Day1Part2Solution(repo: repo)
        ]);
}

class Aoc2025Day1Part1Solution extends Problem {
  final IAoc2025Day1Repo repo;

  Aoc2025Day1Part1Solution({required this.repo});
  @override
  Future<String> solution() async {
    final commands = await repo.getPartA();
    var timesPointedAtZero = 0;
    var curPosition = 50;
    for (final command in commands) {
      final delta = _extractDelta(command);
      curPosition = _getNewPosition(curPosition, delta);
      if (curPosition == 0) {
        timesPointedAtZero++;
      }
    }
    return timesPointedAtZero.toString();
  }
}

typedef _ReturnVal = ({int newPosition, int timesPassedZero});

class Aoc2025Day1Part2Solution extends Problem {
  final IAoc2025Day1Repo repo;

  Aoc2025Day1Part2Solution({required this.repo});
  @override
  Future<String> solution() async {
    final commands = await repo.getPartA();
    var timesPassedZero = 0;
    var curPosition = 50;
    for (final command in commands) {
      final delta = _extractDelta(command);
      final calc = _calculate(curPosition, delta);
      timesPassedZero = calc.timesPassedZero + timesPassedZero;
      curPosition = calc.newPosition;
    }
    return timesPassedZero.toString();
  }

  _ReturnVal _calculate(int startPoint, int delta) {
    if (delta == 0) {
      return (newPosition: startPoint, timesPassedZero: 0);
    }

    final rawNumber = _getRawNewPosition(startPoint, delta);
    final timesFitsIntoRawNumber = rawNumber.abs() ~/ 100;
    final remainder = rawNumber - (timesFitsIntoRawNumber * 100);

    var timesPassedZero = 0;
    if (rawNumber < 0 || rawNumber == 0) {
      timesPassedZero++;
    }
    timesPassedZero = timesPassedZero + (rawNumber.abs() ~/ 100);
    print({
      "startPoint": startPoint,
      "delta": delta,
      "timesPassedZero": timesPassedZero
    });
    return (
      newPosition: _getNewPosition(startPoint, delta),
      timesPassedZero: timesPassedZero
    );
  }
}

int _getRawNewPosition(int startPoint, int delta) {
  return startPoint + delta;
}

int _getNewPosition(int startPoint, int delta) {
  return (startPoint + delta) % 100;
}

int _extractDelta(String command) {
  final isNegative = command[0].toUpperCase() == "L";
  final number = int.parse(command.substring(1));
  if (isNegative) {
    return number * -1;
  }
  return number;
}
