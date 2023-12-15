import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:meta/meta.dart';

class Day3Problems extends DayProblems {
  @protected
  final Day3Repo day3repo;
  Day3Problems({required this.day3repo})
      : super(
          day: 3,
          problems: [
            Day3PartA(day3repo: day3repo),
            Day3PartB(day3repo: day3repo)
          ],
        );
}

abstract class Day3Problem extends Problem {
  @protected
  final Day3Repo day3repo;

  const Day3Problem({required this.day3repo});
}
