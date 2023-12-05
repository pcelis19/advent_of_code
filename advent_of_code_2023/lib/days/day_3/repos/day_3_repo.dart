import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

abstract class Day3Repo {
  Future<Day3PartAInputModel> getPartA();
}

class Day3PartAInputModel {
  final List<List<Day3PartAInputRow>> rows;
}

class Day3PartAInputRow {
  final Map<int, Day3PartAInputNode> xLocAndNode;

  Day3PartAInputRow({required this.xLocAndNode});

  factory Day3PartAInputRow.parseWord(String word) {
    final nodes = <int, Day3PartAInputNode>{};
    int currentIndex = 0;
    while (currentIndex < word.length) {
      bool shouldContinue = true;
      int scannerIndex = currentIndex;
      String token = '';
      while (shouldContinue && scannerIndex < word.length) {
        final letter = word[scannerIndex];
        final characterization = letter.getCharCharacterization();
        switch (characterization) {
          case _CharCharacterization.number:
            token += letter;
            break;
          case _CharCharacterization.symbol:
          nodes.put(scannerIndex, value)
          case _CharCharacterization.peroid:
          // TODO: Handle this case.
        }
      }
    }

    return Day3PartAInputRow(xLocAndNode: nodes);
  }

  Day3PartAInputNode? getNode(int xCoordinate) => xLocAndNode.get(xCoordinate);
}

sealed class Day3PartAInputNode {}

class Day3PartAInputNodeNumber extends Day3PartAInputNode {
  final List<int> values;

  Day3PartAInputNodeNumber({required this.values});

  void addValue(int value) => values.add(value);

  int get absoluteValue {
    final buffer = StringBuffer();
    for (final value in values) {
      buffer.write(value);
    }
    return int.parse(buffer.toString());
  }
}

class Day3PartAInputNodeSymbol extends Day3PartAInputNode {}

enum _CharCharacterization {
  number,
  symbol,
  peroid,
}

extension on String {
  _CharCharacterization getCharCharacterization() {
    if (this == '.') {
      return _CharCharacterization.peroid;
    } else if (isNumber()) {
      return _CharCharacterization.number;
    } else {
      return _CharCharacterization.symbol;
    }
  }
}
