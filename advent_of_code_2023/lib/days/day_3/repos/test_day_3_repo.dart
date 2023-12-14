import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class TestDay3Repo extends Day3Repo {
  @override
  Future<List<Day3PartAInputRow>> getPartA() async {
    final file = FilesService.getSpecificFile(fileName: 'day_3_a_test');
    final lines = await file.readAsLines();
    final rows = <Day3PartAInputRow>[];
    for (final line in lines) {
      rows.add(Day3PartAInputRow.parseWord(line));
    }
    final row = rows[11];
    // print('+'.isNumber());
    print(row.xLocAndNode);
    return rows;
  }
}
