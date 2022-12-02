import 'package:advent_of_code_2022/lib.dart';

class Day1Part1 extends Problem<int> {
  final ICalorieCountingRepo _repo;

  const Day1Part1({
    required ICalorieCountingRepo repo,
  }) : _repo = repo;

  @override
  Future<int> solution() async {
    final input = await _repo.getInput(Day1Parts.part1);
    final solution = _highestCalorieCount(input);
    return solution;
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
