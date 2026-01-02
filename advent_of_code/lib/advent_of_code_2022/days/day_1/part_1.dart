import 'package:advent_of_code/advent_of_code.dart';

class AOC2022D1P1Problem extends AdventOfCodeProblem {
  AOC2022D1P1Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final input = await getInput();
    final solution = _highestCalorieCount(input);
    return solution.toString();
  }

  int _highestCalorieCount(List<String> input) {
    final iterator = input.iterator;
    int currentMax = -1;
    int currentTally = 0;
    while (iterator.moveNext()) {
      final current = iterator.current;
      if (current.isEmpty) {
        if (currentTally > currentMax) {
          currentMax = currentTally;
        }
        currentTally = 0;
      } else {
        int value = int.parse(current);
        currentTally += value;
      }
    }
    if (currentTally > currentMax) {
      currentMax = currentTally;
    }
    return currentMax;
  }
}
