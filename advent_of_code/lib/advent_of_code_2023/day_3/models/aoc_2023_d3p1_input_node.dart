import 'package:freezed_annotation/freezed_annotation.dart';

part 'aoc_2023_d3p1_input_node.freezed.dart';

@freezed
abstract class AOC2023D3P1InputNode with _$AOC2023D3P1InputNode {
  AOC2023D3P1InputNode._();

  factory AOC2023D3P1InputNode.number(String value, int intValue) =
      AOC2023D3P1InputNodeNumber;
  factory AOC2023D3P1InputNode.symbol(String value) =
      AOC2023D3P1InputNodeSymbol;

  static AOC2023D3P1InputNode fromString(
    String string, {
    // TODO remove until we figure out what is going on
    required bool shouldBeNumber,
  }) {
    try {
      final intValue = int.parse(string);
      return AOC2023D3P1InputNode.number(string, intValue);
    } catch (_) {
      if (shouldBeNumber) {
        rethrow;
      }
      return AOC2023D3P1InputNode.symbol(string);
    }
  }
}
