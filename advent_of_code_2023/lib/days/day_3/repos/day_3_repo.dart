import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

abstract class Day3Repo {
  Future<List<Day3PartAInputRow>> getPartA();
}

class Day3PartAInputRow {
  final Map<int, Day3PartAInputNode> xLocAndNode;

  late final Map<int, Day3PartAInputNodeNumber> xLocAndNumbers =
      xLocAndNode.reduce(
    (entry) {
      final value = entry.value;
      switch (value) {
        case Day3PartAInputNodeNumber():
          return MapEntry(entry.key, value);
        default:
          return null;
      }
    },
  );

  late final Map<int, Day3PartAInputNodeSymbol> xLocAndSymbols =
      xLocAndNode.reduce(
    (entry) {
      final value = entry.value;
      switch (value) {
        case Day3PartAInputNodeSymbol():
          return MapEntry(entry.key, value);
        default:
          return null;
      }
    },
  );

  Day3PartAInputRow({required this.xLocAndNode});

  factory Day3PartAInputRow.parseWord(String line) {
    final xLocAndNode = <int, Day3PartAInputNode>{};
    String numberToken = '';
    line.forEachLetter((char, charIndex) {
      final characterization = char.getCharCharacterization();
      switch (characterization) {
        case _CharCharacterization.number:
          numberToken += char;
          break;
        case _CharCharacterization.symbol:
          if (numberToken.isNotEmpty) {
            xLocAndNode.put(
              charIndex - numberToken.length,
              Day3PartAInputNodeNumber(value: numberToken),
            );
            numberToken = '';
          }
          xLocAndNode.put(charIndex, Day3PartAInputNodeSymbol());
        case _CharCharacterization.period:
          if (numberToken.isNotEmpty) {
            xLocAndNode.put(
              charIndex - numberToken.length,
              Day3PartAInputNodeNumber(value: numberToken),
            );
            numberToken = '';
          }
          break;
      }
    });
    if (numberToken.isNotEmpty) {
      xLocAndNode.put(
        line.length - 1,
        Day3PartAInputNodeNumber(value: numberToken),
      );
    }

    return Day3PartAInputRow(xLocAndNode: xLocAndNode);
  }

  Day3PartAInputNode? getNode(int xCoordinate) => xLocAndNode.get(xCoordinate);
}

sealed class Day3PartAInputNode {
  const Day3PartAInputNode();
}

class Day3PartAInputNodeNumber extends Day3PartAInputNode {
  final String value;

  const Day3PartAInputNodeNumber({required this.value});

  int get absoluteValue {
    return int.parse(value);
  }
}

class Day3PartAInputNodeSymbol extends Day3PartAInputNode {
  const Day3PartAInputNodeSymbol();
}

enum _CharCharacterization {
  number,
  symbol,
  period,
}

extension on String {
  _CharCharacterization getCharCharacterization() {
    if (this == '.') {
      return _CharCharacterization.period;
    } else if (isNumber()) {
      return _CharCharacterization.number;
    } else {
      return _CharCharacterization.symbol;
    }
  }
}
