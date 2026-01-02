import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D1P1Problem extends AdventOfCodeProblem {
  AOC2023D1P1Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final lines = await getInput();
    int sum = 0;
    for (final line in lines) {
      String? firstNum, secondNum;
      // here we go through every letter
      line.forEachLetter((letter, _) {
        if (letter.isNumber()) {
          if (firstNum == null) {
            firstNum = letter;
          } else {
            secondNum = letter;
          }
        }
      });

      // at this point we have gone through the line
      try {
        if (secondNum != null) {
          sum += int.parse('$firstNum$secondNum');
        } else {
          sum += int.parse('$firstNum$firstNum');
        }
      } catch (error) {
        print('Likly firstNum was not assigned and is null');
      }
    }
    return sum.toString();
  }
}
