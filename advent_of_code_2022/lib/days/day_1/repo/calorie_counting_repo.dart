enum Day1Parts { part1, part2 }

extension Day1Part1X on Day1Parts {
  String get fileName {
    switch (this) {
      case Day1Parts.part1:
        return 'part_1.txt';
      case Day1Parts.part2:
        return 'part_2.txt';
    }
  }
}

abstract class ICalorieCountingRepo {
  const ICalorieCountingRepo();

  Future<List<String>> getInput(Day1Parts day1Part);
}
