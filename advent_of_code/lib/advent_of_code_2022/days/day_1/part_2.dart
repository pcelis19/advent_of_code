import 'package:advent_of_code/advent_of_code.dart';

class AOC2022D1P2Problem extends AdventOfCodeProblem {
  AOC2022D1P2Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final input = await getInput();
    final tallies = _sortedElfsTallies(input);
    final solution = _topNElfsTallies(tallies, 3);
    return solution.toString();
  }

  int _topNElfsTallies(List<int> tallies, int topX) {
    if (topX > tallies.length || topX < 0) {
      throw 'Invalid top elfs: ($topX). Amount of tallies: ${tallies.length}';
    }
    int sum = 0;
    for (int i = 0; i < topX; i++) {
      sum += tallies[i];
    }
    return sum;
  }

  List<int> _sortedElfsTallies(List<String> input) {
    final iterator = input.iterator;
    final tallies = <int>[];
    int currentTally = 0;
    while (iterator.moveNext()) {
      final current = iterator.current;
      if (current.isEmpty) {
        tallies.add(currentTally);
        currentTally = 0;
      } else {
        int value = int.parse(current);
        currentTally += value;
      }
    }
    tallies.sort(((a, b) => b.compareTo(a)));
    return tallies;
  }
}
