import 'package:advent_of_code_2022/lib.dart';

class Day1Part2 extends Problem<int> {
  final ICalorieCountingRepo _repo;

  const Day1Part2({
    required ICalorieCountingRepo repo,
  }) : _repo = repo;

  @override
  Future<int> solution() async {
    final input = await _repo.getInput(Day1Parts.part2);
    final tallies = _sortedElfsTallies(input);
    final solution = _topNElfsTallies(tallies, 3);
    return solution;
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
