import 'dart:io';

import 'package:advent_of_code/advent_of_code.dart';

final _years = <AdventOfCodeYear>[
  AdventOfCodeYear(
    year: AOCYear.aoc2022,
    days: [
      AdventOfCodeDay(
        day: AOCDay.aoc1,
        problems: [
          AOC2022D1P1Problem(
            getInputFcn: Assets.aoc2022InputFiles.day1a.getInputFcn(),
          ),
          AOC2022D1P2Problem(
            getInputFcn: Assets.aoc2022InputFiles.day1b.getInputFcn(),
          ),
        ],
      ),
      AdventOfCodeDay(
        day: AOCDay.aoc2,
        problems: [
          AOC2022D2P1Problem(
            getInputFcn: Assets.aoc2022InputFiles.day2a.getInputFcn(),
          ),
        ],
      ),
    ],
  ),
  AdventOfCodeYear(
    year: AOCYear.aoc2023,
    days: [
      AdventOfCodeDay(
        day: AOCDay.aoc1,
        problems: [
          AOC2023D1P1Problem(
            getInputFcn: Assets.aoc2023InputFiles.day1a.getInputFcn(),
          ),
          AOC2023D1P2Problem(
            getInputFcn: Assets.aoc2023InputFiles.day1b.getInputFcn(),
          ),
        ],
      ),
      AdventOfCodeDay(
        day: AOCDay.aoc2,
        problems: [
          AOC2023D2P1Problem(
            getInputFcn: Assets.aoc2023InputFiles.day2a.getInputFcn(),
          ),
          AOC2023D2P2Problem(
            getInputFcn: Assets.aoc2023InputFiles.day2b.getInputFcn(),
          ),
        ],
      ),
      AdventOfCodeDay(
        day: AOCDay.aoc3,
        problems: [
          AOC2023D3P1Problem(
            getInputFcn: Assets.aoc2023InputFiles.day3a.getInputFcn(),
          ),
          AOC2023D3P2Problem(
            getInputFcn: Assets.aoc2023InputFiles.day3bTest.getInputFcn(),
          ),
        ],
      ),
    ],
  ),
  AdventOfCodeYear(year: AOCYear.aoc2025, days: []),
];

void main() {
  AdventOfCodeService.runYears(
    _years,
    skipYears: {AOCYear.aoc2022, AOCYear.aoc2023},
  );
}

extension on String {
  AdventOfCodeInputFunction getInputFcn() {
    return () => File(this).readAsLines();
  }
}
