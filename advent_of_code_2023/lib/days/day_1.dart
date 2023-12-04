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
            Day1PartB(day1repo: day1repo),
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
    final lines = await day1repo.part2();
    int sum = 0;

    for (final line in lines) {
      String? firstNum, secondNum;
      // here we go through every letter
      line.forEachLetter((letter) {
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

class Day1PartB extends Problem {
  @protected
  final Day1Repo day1repo;

  Day1PartB({
    required this.day1repo,
  });

  @override
  Future<String> solution() async {
    final lines = await day1repo.part2();
    int sum = 0;
    final tree = _getPrimedUpTrieTree();
    for (final line in lines) {
      String? codedFirstNum, codedSecondNum;
      var prefix = '';
      // here we go through every letter
      line.forEachLetter((letter) {
        prefix += letter;
        final result = tree.lookUp(prefix);
        switch (result) {
          case TrieLookUpResult.isPrefix:
            // just continue
            break;
          case TrieLookUpResult.isWord:
            if (codedFirstNum == null) {
              codedFirstNum = prefix;
            } else {
              codedSecondNum = prefix;
            }
            prefix = '';
            break;
          case TrieLookUpResult.doesNotExist:
            final isLetterANumber = letter.isNumber();
            if (isLetterANumber) {
              if (codedFirstNum == null) {
                codedFirstNum = letter;
              } else {
                codedSecondNum = letter;
              }
            }
            // need to solve oneight
            // fiveightwone
            prefix = '';
            break;
        }
      });

      // at this point we have gone through the line
      String? firstNum;
      String? secondNum;
      try {
        firstNum = codedFirstNum!.extractNumAsNumString();
        secondNum = codedSecondNum?.extractNumAsNumString();
        if (secondNum != null) {
          sum += int.parse('$firstNum$secondNum');
        } else {
          sum += int.parse('$firstNum$firstNum');
        }
      } catch (error) {
        String myMesssage = '[firstNum, $firstNum], [secondNum, $secondNum]. '
            'Likely, got this error because firstNum was null';
        print(myMesssage);
      }
    }

    return sum.toString();
  }

  ITrieTree _getPrimedUpTrieTree() {
    final tree = RetrievalTriePackage();
    // adds nums 0-9 (inclusive);
    for (int i = 0; i <= 9; i++) {
      tree.add(i.toString());
    }
    tree.add('one');
    tree.add('two');
    tree.add('three');
    tree.add('four');
    tree.add('five');
    tree.add('six');
    tree.add('seven');
    tree.add('eight');
    tree.add('nine');
    return tree;
  }
}

extension on String {
  /// if firstNum = '1' returns '1'
  /// if firstNum = 'one' returns '1'
  String extractNumAsNumString() {
    if (isNumber()) {
      return this;
    } else {
      return getWordToNumberMapping().get(this)!;
    }
  }

  Map<String, String> getWordToNumberMapping() => const {
        'one': '1',
        'two': '2',
        'three': '3',
        'four': '4',
        'five': '5',
        'six': '6',
        'seven': '7',
        'eight': '8',
        'nine': '9',
      };
}
