import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class Day3PartAInputModel {
  final List<Day3PartAInputRow> rows;

  const Day3PartAInputModel({required this.rows});

  Day3PartAInputNode getNodeOrThrow(IntPoint location) => getNode(location)!;

  Day3PartAInputNode? getNode(IntPoint location) =>
      rows[location.y].getNode(location.x);

  bool isValidRowIndex(int y) {
    return y >= 0 && y < rows.length - 1;
  }
}
