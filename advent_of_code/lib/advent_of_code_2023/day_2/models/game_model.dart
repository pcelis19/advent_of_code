import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D2P1GameModel {
  final int id;
  final List<AOC2023D2P1BagGrab> grabs;

  const AOC2023D2P1GameModel({required this.id, required this.grabs});

  AOC2023D2P1BagGrab minimumCubesNeedToMakeGameValid() {
    int minRedBalls = -1;
    int minBlueBalls = -1;
    int minGreenBalls = -1;
    for (final grab in grabs) {
      if (minRedBalls < grab.redBalls) {
        minRedBalls = grab.redBalls;
      }
      if (minBlueBalls < grab.blueBalls) {
        minBlueBalls = grab.blueBalls;
      }
      if (minGreenBalls < grab.greenBalls) {
        minGreenBalls = grab.greenBalls;
      }
    }
    return AOC2023D2P1BagGrab(
      redBalls: minRedBalls,
      blueBalls: minBlueBalls,
      greenBalls: minGreenBalls,
    );
  }

  factory AOC2023D2P1GameModel.parseToken(String token) {
    final semiColonSeperatedTokens = token.split(';');
    int? id;
    final grabs = <AOC2023D2P1BagGrab>[];
    for (final semiColonSeperatedToken in semiColonSeperatedTokens) {
      final tokens = semiColonSeperatedToken.trim().split(' ');
      int redBalls = 0, blueBalls = 0, greenBalls = 0;
      for (int i = 0; i < tokens.length; i = i + 2) {
        String pairVal1 = tokens[i];
        String pairVal2 = tokens[i + 1];
        if (pairVal1[0].isNumber()) {
          int number = int.parse(pairVal1);
          if (pairVal2.contains('blue')) {
            blueBalls = number;
          }
          if (pairVal2.contains('green')) {
            greenBalls = number;
          }
          if (pairVal2.contains('red')) {
            redBalls = number;
          }
        } else {
          id = int.parse(pairVal2.replaceAll(':', ''));
        }
      }
      grabs.add(
        AOC2023D2P1BagGrab(
          redBalls: redBalls,
          blueBalls: blueBalls,
          greenBalls: greenBalls,
        ),
      );
    }
    return AOC2023D2P1GameModel(id: id!, grabs: grabs);
  }

  /// Whether game is valid
  bool isValid({
    required int amountOfRedBallsInBag,
    required int amountOfBlueBallsInBag,
    required int amountOfGreenBallsInBag,
  }) {
    for (final grab in grabs) {
      final isValidGrab = grab.isValid(
        amountOfRedBallsInBag: amountOfRedBallsInBag,
        amountOfBlueBallsInBag: amountOfBlueBallsInBag,
        amountOfGreenBallsInBag: amountOfGreenBallsInBag,
      );
      if (!isValidGrab) {
        return false;
      }
    }
    return true;
  }
}
