import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:advent_of_code/advent_of_code.dart';

part 'aoc_2023_d3p1_set_node.freezed.dart';

@freezed
abstract class AOC2023D3P1SetNode with _$AOC2023D3P1SetNode {
  AOC2023D3P1SetNode._();
  factory AOC2023D3P1SetNode({
    required (IntPoint, IntPoint) gearNumberLocations,
    required (IntPoint, IntPoint) gearNumberLocationsReveresed,
  }) = _AOC2023D3P1SetNode;

  static AOC2023D3P1SetNode fromNodeLocations({
    required IntPoint node1Loc,
    required IntPoint node2Loc,
  }) {
    (IntPoint, IntPoint) forward = (node1Loc, node2Loc);
    return AOC2023D3P1SetNode(
      gearNumberLocations: forward,
      gearNumberLocationsReveresed: forward.reverse(),
    );
  }

  IntPoint getFirstVal() => gearNumberLocations.$1;
  IntPoint getSecondVal() => gearNumberLocations.$2;
}

extension _PointX<T extends num> on (Point<T>, Point<T>) {
  (Point<T>, Point<T>) reverse() => (this.$2, this.$2);
}
