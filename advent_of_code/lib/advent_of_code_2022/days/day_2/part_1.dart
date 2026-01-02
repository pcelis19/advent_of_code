import 'package:advent_of_code/advent_of_code.dart';

int _rockBonus = 1;
int _paperBonus = 2;
int _scissorsBonus = 3;
int _draw = 3;
int _loss = 0;
int _win = 6;

class AOC2022D2P1Problem extends AdventOfCodeProblem {
  AOC2022D2P1Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final input = await getInput();
    final solution = _resultsOfAllMatches(input);
    return solution.toString();
  }

  int _resultsOfAllMatches(List<String> matches) {
    int score = 0;
    for (final match in matches) {
      score += _getMatchResult(match);
    }
    return score;
  }

  int _getMatchResult(String match) {
    final opponentsHand = match[0];
    final myHand = match[2];
    int score = 0;
    myHand.myHandWhen(
      rock: () {
        score += _rockBonus;
        opponentsHand.opponentHandWhen(
          rock: () => score += _draw,
          paper: () => score += _loss,
          scissors: () => score += _win,
        );
      },
      paper: () {
        score += _paperBonus;
        opponentsHand.opponentHandWhen(
          rock: () => score += _win,
          paper: () => score += _draw,
          scissors: () => score += _loss,
        );
      },
      scissors: () {
        score += _scissorsBonus;
        opponentsHand.opponentHandWhen(
          rock: () => score += _loss,
          paper: () => score += _win,
          scissors: () => score += _draw,
        );
      },
    );
    return score;
  }
}

extension on String {
  void opponentHandWhen({
    required void Function() rock,
    required void Function() paper,
    required void Function() scissors,
  }) {
    if (this == 'A') {
      return rock.call();
    } else if (this == 'B') {
      return paper.call();
    } else if (this == 'C') {
      return scissors.call();
    } else {
      throw 'Invalid opponents hand: [$this]';
    }
  }

  void myHandWhen({
    required void Function() rock,
    required void Function() paper,
    required void Function() scissors,
  }) {
    if (this == 'X') {
      return rock.call();
    } else if (this == 'Y') {
      return paper.call();
    } else if (this == 'Z') {
      return scissors.call();
    } else {
      throw 'Invalid opponents hand: [$this]';
    }
  }
}
