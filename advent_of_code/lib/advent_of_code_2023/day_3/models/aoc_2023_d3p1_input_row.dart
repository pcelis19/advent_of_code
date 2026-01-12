import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D3P1InputRow {
  final Map<int, AOC2023D3P1InputNode> xLocAndNode;

  AOC2023D3P1InputRow({required this.xLocAndNode});

  factory AOC2023D3P1InputRow.parseWord(String line) {
    final xLocAndNode = <int, AOC2023D3P1InputNode>{};
    String numberToken = '';
    line.forEachLetter((char, charIndex) {
      final characterization = char.getCharCharacterization();
      switch (characterization) {
        case _CharCharacterization.number:
          numberToken += char;
          break;
        case _CharCharacterization.symbol:
          if (numberToken.isNotEmpty) {
            xLocAndNode.putOrThrow(
              charIndex - numberToken.length,
              AOC2023D3P1InputNode.fromString(
                numberToken,
                shouldBeNumber: true,
              ),
            );
            numberToken = '';
          }
          // TODO wtf am I doing here?
          xLocAndNode.putOrThrow(charIndex, AOC2023D3P1InputNode.symbol(char));

          break;
        case _CharCharacterization.period:
          if (numberToken.isNotEmpty) {
            xLocAndNode.putOrThrow(
              charIndex - numberToken.length,
              AOC2023D3P1InputNode.fromString(
                numberToken,
                shouldBeNumber: true,
              ),
            );
            numberToken = '';
          }
          break;
      }
    });
    if (numberToken.isNotEmpty) {
      final xLoc = line.length - numberToken.length;
      xLocAndNode.putOrThrow(
        xLoc,
        AOC2023D3P1InputNode.fromString(numberToken, shouldBeNumber: true),
      );
    }

    return AOC2023D3P1InputRow(xLocAndNode: xLocAndNode);
  }

  late final Map<int, AOC2023D3P1InputNodeNumber> xLocAndNumbers = xLocAndNode
      .reduce((entry) {
        return entry.value.mapOrNull(
          number: (value) {
            return MapEntry(entry.key, value);
          },
        );
      });

  late final Map<int, AOC2023D3P1InputNodeSymbol> xLocAndSymbols = xLocAndNode
      .reduce((entry) {
        return entry.value.mapOrNull(
          symbol: (value) => MapEntry(entry.key, value),
        );
      });

  AOC2023D3P1InputNode? getNode(int xCoordinate) =>
      xLocAndNode.get(xCoordinate);

  @override
  String toString() => xLocAndNode.toString();
}

enum _CharCharacterization { number, symbol, period }

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
