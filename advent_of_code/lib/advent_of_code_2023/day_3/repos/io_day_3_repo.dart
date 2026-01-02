import 'package:advent_of_code_2023/advent_of_code_2023.dart';

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

  @override
  Future<Day3PartAInputModel> getPartB() async {
    final file = FilesService.getInputFile(day: 3, dayPart: DayPart.b);
    final lines = await file.readAsLines();
    final rows = <Day3PartAInputRow>[];
    for (final line in lines) {
      rows.add(Day3PartAInputRow.parseWord(line));
    }
    return Day3PartAInputModel(rows: rows);
  }
}
