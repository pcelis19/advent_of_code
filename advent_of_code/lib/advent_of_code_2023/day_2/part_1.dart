import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D2P1Problem extends AdventOfCodeProblem<Strings> {
  AOC2023D2P1Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final lines = await getInput();
    final validGames = <AOC2023D2P1GameModel>[];
    for (final line in lines) {
      final game = AOC2023D2P1GameModel.parseToken(line);
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
