import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:meta/meta.dart';

class Day2Problems extends DayProblems {
  @protected
  final Day2Repo day2repo;
  Day2Problems({required this.day2repo})
      : super(
          day: 2,
          problems: [
            Day2PartA(day2repo),
            Day2PartB(day2repo),
          ],
        );
}

class Day2PartA extends Problem {
  @protected
  final Day2Repo day2repo;

  Day2PartA(this.day2repo);

  @override
  Future<String> solution() async {
    final lines = await day2repo.getPartA();
    final validGames = <Day2PartAGameModel>[];
    for (final line in lines) {
      final game = Day2PartAGameModel.parseToken(line);
      final isGameValid = game.isValid(
        amountOfRedBallsInBag: 12,
        amountOfBlueBallsInBag: 14,
        amountOfGreenBallsInBag: 13,
      );
      if (isGameValid) {
        validGames.add(game);
      }
    }
    int sumsOfIds = 0;
    for (final game in validGames) {
      sumsOfIds += game.id;
    }
    return sumsOfIds.toString();
  }
}

class Day2PartB extends Problem {
  @protected
  final Day2Repo day2repo;

  Day2PartB(this.day2repo);
  @override
  Future<String> solution() async {
    final lines = await day2repo.getPartB();
    int sumOfMinPowerBalls = 0;
    for (final line in lines) {
      final game = Day2PartAGameModel.parseToken(line);
      final minPowerOfBalls =
          game.minimumCubesNeedToMakeGameValid().minPowerOfBalls();
      sumOfMinPowerBalls += minPowerOfBalls;
    }

    return sumOfMinPowerBalls.toString();
  }
}

class Day2PartAGameModel {
  final int id;
  final List<Day2PartABagGrab> grabs;

  const Day2PartAGameModel({
    required this.id,
    required this.grabs,
  });

  Day2PartABagGrab minimumCubesNeedToMakeGameValid() {
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
    return Day2PartABagGrab(
      redBalls: minRedBalls,
      blueBalls: minBlueBalls,
      greenBalls: minGreenBalls,
    );
  }

  factory Day2PartAGameModel.parseToken(String token) {
    final semiColonSeperatedTokens = token.split(';');
    int? id;
    final grabs = <Day2PartABagGrab>[];
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
        Day2PartABagGrab(
          redBalls: redBalls,
          blueBalls: blueBalls,
          greenBalls: greenBalls,
        ),
      );
    }
    return Day2PartAGameModel(id: id!, grabs: grabs);
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

class Day2PartABagGrab {
  final int redBalls;
  final int blueBalls;
  final int greenBalls;

  Day2PartABagGrab({
    required this.redBalls,
    required this.blueBalls,
    required this.greenBalls,
  });

  /// Whether bag grab is valid
  bool isValid({
    required int amountOfRedBallsInBag,
    required int amountOfBlueBallsInBag,
    required int amountOfGreenBallsInBag,
  }) =>
      redBalls <= amountOfRedBallsInBag &&
      blueBalls <= amountOfBlueBallsInBag &&
      greenBalls <= amountOfGreenBallsInBag;

  /// The power of a set of cubes is equal to the numbers of red, green, and blue cubes multiplied together
  int minPowerOfBalls() => redBalls * blueBalls * greenBalls;
}
