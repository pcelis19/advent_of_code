import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';
import 'package:meta/meta.dart';

class Day1 extends DayProblems {
  @protected
  final Day1Repo day1repo;
  Day1({required this.day1repo})
      : super(
          day: 1,
          problems: [
            Day1PartA(day1repo: day1repo),
          ],
        );
}

class Day1PartA extends Problem {
  @protected
  final Day1Repo day1repo;

  Day1PartA({
    required this.day1repo,
  });

  @override
  Future<String> solution() async {
    final lines = await day1repo.part1();
    int tally = 0;
    for (final line in lines) {
      String? firstNum, secondNum;
      line.perLetter((letter) {
        if (letter.isNumber()) {
          if (firstNum == null) {
            firstNum = letter;
          } else {
            secondNum = letter;
          }
        }
      });
      try {
        if (secondNum != null) {
          tally += int.parse('$firstNum$secondNum');
        } else {
          tally += int.parse('$firstNum$firstNum');
        }
      } catch (error) {
        print('Likly a null firstNum was not assigned');
      }
    }
    return tally.toString();
  }
}
