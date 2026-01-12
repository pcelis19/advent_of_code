import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D3P1Problem
    extends AdventOfCodeProblem<List<AOC2023D3P1InputRow>> {
  AOC2023D3P1Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final lines = await getInput();
    var sum = 0;
    for (int y = 0; y < lines.length; y++) {
      final line = lines[y];
      for (final entry in line.xLocAndNumbers.entries) {
        final shouldAdd = _shouldAdd(
          lines: lines,
          yLoc: y,
          xLoc: entry.key,
          currentNumberNode: entry.value,
        );
        if (shouldAdd) {
          sum += entry.value.intValue;
        }
      }
    }
    return sum.toString();
  }

  bool _shouldAdd({
    required List<AOC2023D3P1InputRow> lines,
    required int yLoc,
    required int xLoc,
    required AOC2023D3P1InputNodeNumber currentNumberNode,
  }) {
    final willCheckTop = yLoc > 0;
    final willCheckBottom = yLoc < lines.length - 1;
    final willCheckLeft = xLoc > 0;
    const willCheckRight = true;
    final xStart = xLoc - 1;
    final xFinish = xLoc + currentNumberNode.value.length;
    if (willCheckTop) {
      final yLineIndex = yLoc - 1;
      final lineToCheck = lines[yLineIndex];
      final hasSymbol = _doesLineHaveSymbolInRange(
        lineToCheck,
        xStart: xStart,
        xFinish: xFinish,
      );
      if (hasSymbol) {
        return true;
      }
    }
    if (willCheckBottom) {
      final yLineIndex = yLoc + 1;
      final lineToCheck = lines[yLineIndex];
      final hasSymbol = _doesLineHaveSymbolInRange(
        lineToCheck,
        xStart: xStart,
        xFinish: xFinish,
      );
      if (hasSymbol) {
        return true;
      }
    }
    if (willCheckLeft) {
      final hasSymbol = lines[yLoc].xLocAndSymbols.get(xStart) != null;
      if (hasSymbol) {
        return true;
      }
    }
    if (willCheckRight) {
      final lineChecking = lines[yLoc];
      final hasSymbol = lineChecking.xLocAndSymbols.get(xFinish) != null;
      if (hasSymbol) {
        return true;
      }
    }
    return false;
  }

  bool _doesLineHaveSymbolInRange(
    AOC2023D3P1InputRow row, {
    required int xStart,
    required int xFinish,
  }) {
    for (int i = xStart; i <= xFinish; i++) {
      final hasValue = row.xLocAndSymbols.get(i) != null;
      if (hasValue) {
        return true;
      }
    }
    return false;
  }
}
