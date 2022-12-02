enum DayParts { part1, part2 }

extension Day1Part1X on DayParts {
  String get fileName {
    switch (this) {
      case DayParts.part1:
        return 'part_1.txt';
      case DayParts.part2:
        return 'part_2.txt';
    }
  }
}
