import 'dart:math';

import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D3P2Problem extends AdventOfCodeProblem<AOC2023D3P1InputModel> {
  AOC2023D3P2Problem({required super.getInputFcn});

  @override
  Future<String> solution() async {
    final model = await getInput();
    var sum = 0;
    final usedPairs = <AOC2023D3P1SetNode>{};
    print(model.rows);
    final rows = model.rows;
    for (int y = 0; y < rows.length; y++) {
      final row = rows[y];
      for (final symbolEntry in row.xLocAndSymbols.entries) {
        final node = _getSetNode(
          model: model,
          curYLoc: y,
          curXLoc: symbolEntry.key,
        );
        if (node != null) {
          usedPairs.addOrThrow(node);
        }
      }
    }
    for (final pair in usedPairs) {
      final val1 = model.getNodeOrThrow(pair.getFirstVal());
      final val2 = model.getNodeOrThrow(pair.getSecondVal());
      sum += val1.intValue * val2.intValue;
    }

    return sum.toString();
  }

  AOC2023D3P1SetNode? _getSetNode({
    required AOC2023D3P1InputModel model,
    required int curYLoc,
    required int curXLoc,
  }) {
    final willCheckTop = curYLoc > 0;
    final willCheckBottom = model.isValidRowIndex(curYLoc + 1);
    final willCheckLeft = curXLoc > 0;
    const willCheckRight = true;
    final xStart = curXLoc - 1;
    final xFinish = curXLoc + 1;
    IntPoint? node1Loc;
    IntPoint? node2Loc;
    void assignPoints((IntPoint?, IntPoint?) points) {
      if (node1Loc == null) {
        node1Loc = points.$1;
      } else {
        node2Loc = points.$2;
      }
    }

    if (willCheckTop) {
      final yLoc = curYLoc - 1;
      final points = _doesLineHaveSymbolInRange(
        model: model,
        yLoc: yLoc,
        xStart: xStart,
        xFinish: xFinish,
      );
      assignPoints(points);
      final node = buildDay3PartBSetNode(
        node1Loc: node1Loc,
        node2Loc: node2Loc,
      );
      if (node != null) {
        return node;
      }
    }

    if (willCheckBottom) {
      final yLoc = curYLoc + 1;
      final points = _doesLineHaveSymbolInRange(
        model: model,
        yLoc: yLoc,
        xStart: xStart,
        xFinish: xFinish,
      );
      assignPoints(points);
      final node = buildDay3PartBSetNode(
        node1Loc: node1Loc,
        node2Loc: node2Loc,
      );
      if (node != null) {
        return node;
      }
    }

    if (willCheckLeft) {
      final hasSymbol = model.rows[curYLoc].xLocAndNumbers.get(xStart) != null;
      if (hasSymbol) {
        final points = (IntPoint(xStart, curYLoc), null);
        assignPoints(points);
        final node = buildDay3PartBSetNode(
          node1Loc: node1Loc,
          node2Loc: node2Loc,
        );
        if (node != null) {
          return node;
        }
      }
    }
    if (node1Loc != null && willCheckRight) {
      final hasSymbol = model.rows[curYLoc].xLocAndNumbers.get(xFinish) != null;
      if (hasSymbol) {
        final points = (IntPoint(xFinish, curYLoc), null);
        assignPoints(points);
        final node = buildDay3PartBSetNode(
          node1Loc: node1Loc,
          node2Loc: node2Loc,
        );
        if (node != null) {
          return node;
        }
      }
    }
    return null;
  }

  AOC2023D3P1SetNode? buildDay3PartBSetNode({
    required IntPoint? node1Loc,
    required IntPoint? node2Loc,
  }) {
    if (node1Loc != null && node2Loc != null) {
      return AOC2023D3P1SetNode.fromNodeLocations(
        node1Loc: node1Loc,
        node2Loc: node2Loc,
      );
    }
    return null;
  }

  (IntPoint?, IntPoint?) _doesLineHaveSymbolInRange({
    required AOC2023D3P1InputModel model,
    required int yLoc,
    required int xStart,
    required int xFinish,
  }) {
    final row = model.rows[yLoc];
    IntPoint? val1, val2;
    for (int xCur = xStart; xCur <= xFinish; xCur++) {
      final numExists = row.xLocAndNumbers.get(xCur) != null;
      if (numExists) {
        final point = Point(xCur, yLoc);
        if (val1 == null) {
          val1 = point;
        } else {
          val2 = point;
          return (val1, val2);
        }
      }
    }
    return (val1, val2);
  }
}
