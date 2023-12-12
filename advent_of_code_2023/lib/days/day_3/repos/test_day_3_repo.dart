import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class TestDay3Repo extends Day3Repo {
  @override
  Future<List<Day3PartAInputRow>> getPartA() async {
    final number = Day3PartAInputNodeNumber(value: '1');
    final symbol = Day3PartAInputNodeSymbol('*');
    return [
      Day3PartAInputRow(
        xLocAndNode: {
          0: symbol,
          1: number,
        },
      ),
      Day3PartAInputRow(
        xLocAndNode: {
          15: Day3PartAInputNodeNumber(value: '15'),
        },
      ),
    ];
  }
}
