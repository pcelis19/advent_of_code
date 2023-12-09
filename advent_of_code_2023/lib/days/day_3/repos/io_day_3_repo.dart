import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

class IODay3Repo extends Day3Repo {
  @override
  Future<List<Day3PartAInputRow>> getPartA() async {
    final file = FilesService.getInputFile(day: 3, dayPart: DayPart.a);
    final lines = await file.readAsLines();
    final rows = <Day3PartAInputRow>[];
    for (final line in lines) {
      rows.add(Day3PartAInputRow.parseWord(line));
    }
    return rows;
  }
}

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
