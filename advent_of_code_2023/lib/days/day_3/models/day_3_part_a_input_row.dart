import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class Day3PartAInputRow {
  final Map<int, Day3PartAInputNode> xLocAndNode;

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
          xLocAndNode.put(charIndex, Day3PartAInputNodeSymbol(char));

          break;
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
      final xLoc = line.length - numberToken.length;
      xLocAndNode.put(
        xLoc,
        Day3PartAInputNodeNumber(value: numberToken),
      );
    }

    return Day3PartAInputRow(xLocAndNode: xLocAndNode);
  }

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

  Day3PartAInputNode? getNode(int xCoordinate) => xLocAndNode.get(xCoordinate);
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
