import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D2P2Problem extends AdventOfCodeProblem<Strings> {
  AOC2023D2P2Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final lines = await getInput();
    int sumOfMinPowerBalls = 0;
    for (final line in lines) {
      final game = AOC2023D2P1GameModel.parseToken(line);
      final minPowerOfBalls = game
          .minimumCubesNeedToMakeGameValid()
          .minPowerOfBalls();
      sumOfMinPowerBalls += minPowerOfBalls;
    }

    return sumOfMinPowerBalls.toString();
  }
}
