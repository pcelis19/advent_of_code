import 'package:advent_of_code/advent_of_code.dart';

class AOC2023D3P1InputModel {
  final List<AOC2023D3P1InputRow> rows;

  const AOC2023D3P1InputModel({required this.rows});

  AOC2023D3P1InputNode getNodeOrThrow(IntPoint location) => getNode(location)!;

  AOC2023D3P1InputNode? getNode(IntPoint location) =>
      rows[location.y].getNode(location.x);

  bool isValidRowIndex(int y) {
    return y >= 0 && y < rows.length - 1;
  }
}
