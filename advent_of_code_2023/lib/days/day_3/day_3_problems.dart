import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';
import 'package:meta/meta.dart';

class Day3Problems extends DayProblems {
  @protected
  final Day3Repo day3repo;
  Day3Problems({required this.day3repo})
      : super(
          day: 3,
          problems: [
            Day3PartA(day3repo),
            // Day3PartB(day2repo),
          ],
        );
}

class Day3PartA extends Problem {
  @protected
  final Day3Repo day3repo;

  Day3PartA(this.day3repo);

  @override
  Future<String> solution() async {
    final lines = await day3repo.getPartA();
    var tally = 0;
    for (int y = 0; y < lines.length; y++) {
      final line = lines[y];
      for (final entry in line.xLocAndNumbers.entries) {
        final shouldAdd = _shouldAdd(
          lines: lines,
          yLoc: y,
          xLoc: entry.key,
          numberNode: entry.value,
        );
        if (shouldAdd) {
          final xLocString = entry.key.toString().padLeft(3, '0');
          final yLocString = y.toString().padLeft(3, '0');
          print('($xLocString, $yLocString)');
          tally += entry.value.absoluteValue;
        }
      }
    }
    return tally.toString();
  }

  bool _shouldAdd({
    required List<Day3PartAInputRow> lines,
    required int yLoc,
    required int xLoc,
    required Day3PartAInputNodeNumber numberNode,
  }) {
    final willCheckTop = yLoc > 0;
    final willCheckBottom = yLoc < lines.length - 1;
    final willCheckLeft = xLoc > 0;
    const willCheckRight = true;
    final xStart = xLoc - 1;
    final xFinish = xLoc + numberNode.value.length;
    if (willCheckTop) {
      final yLineIndex = yLoc - 1;
      final lineToCheck = lines[yLineIndex];
      final hasSymbol = _doesLineHaveSymbolInRange(
        lineToCheck,
        yLoc: yLineIndex,
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
        yLoc: yLineIndex,
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
    Day3PartAInputRow row, {
    required int yLoc,
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
