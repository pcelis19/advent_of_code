import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class Aoc2025IoDay1Repo extends IAoc2025Day1Repo {
  @override
  Future<List<String>> getPartA() {
    final file = FilesService.getInputFile(day: 1, dayPart: DayPart.a);
    return file.readAsLines();
  }

  @override
  Future<List<String>> getPartB() {
    return getPartA();
  }
}
