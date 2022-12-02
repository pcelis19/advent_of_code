import 'package:advent_of_code_2022/days/days.dart';
import 'package:advent_of_code_2022/models/day.dart';

class Day1Problems extends DayProblems {
  Day1Problems({
    ICalorieCountingRepo repo = const IOCalorieCountingRepo(),
  }) : super(
          day: 1,
          problems: [
            Day1Part1(repo: repo),
          ],
        );
}
