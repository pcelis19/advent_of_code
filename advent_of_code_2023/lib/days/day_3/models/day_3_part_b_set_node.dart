import 'dart:math';

import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_3_part_b_set_node.freezed.dart';

@freezed
class Day3PartBSetNode with _$Day3PartBSetNode {
  const Day3PartBSetNode._();

  const factory Day3PartBSetNode({
    required (IntPoint, IntPoint) gearNumberLocations,
    required (IntPoint, IntPoint) gearNumberLocationsReveresed,
  }) = _Day3PartBSetNode;

  static Day3PartBSetNode fromNodeLocations({
    required IntPoint node1Loc,
    required IntPoint node2Loc,
  }) {
    (IntPoint, IntPoint) forward = (node1Loc, node2Loc);
    return Day3PartBSetNode(
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
