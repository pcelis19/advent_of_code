import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_3_part_b_set_node.freezed.dart';

@freezed
class Day3PartBSetNode with _$Day3PartBSetNode {
  const factory Day3PartBSetNode({
    required (Point, Point) forward,
    required (Point, Point) backwards,
  }) = _Day3PartBSetNode;

  static Day3PartBSetNode fromDay3PartAInputNodeNumbers(
    Point node1Loc,
    Point node2Loc,
  ) {
    (Point, Point) forward = (node1Loc, node2Loc);
    return Day3PartBSetNode(
      forward: forward,
      backwards: forward.reverse(),
    );
  }
}

extension on (Point, Point) {
  (Point, Point) reverse() => (this.$2, this.$2);
}
