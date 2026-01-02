import 'package:advent_of_code/advent_of_code.dart';

final _days = <DayProblems>{
  // Day1Problems(day1repo: IODay1Repo()),
  // Day2Problems(day2repo: IODay2Repo()),
  // Day3Problems(day3repo: TestDay3Repo()),
  Aoc2025Day1Solutions(repo: Aoc2025IoDay1Repo()),
};

final _years = <AdventOfCodeYear>[
  AdventOfCodeYear(
    year: AOCYear.aoc2022,
    days: [
      AdventOfCodeDay(
        day: AOCDay.aoc1,
        problems: [AOC2022D1P1Problem(getInputFcn: () => Assets)],
      ),
    ],
  ),
  AdventOfCodeYear(year: AOCYear.aoc2023, days: []),
  AdventOfCodeYear(year: AOCYear.aoc2025, days: []),
];

void main() {
  AdventOfCodeService.runYears(
    _years,
    skipYears: {AOCYear.aoc2022, AOCYear.aoc2023},
  );
}
