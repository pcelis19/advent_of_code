import 'package:advent_of_code_2023/advent_of_code_2023.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

class IODay1Repo extends Day1Repo {
  @override
  Future<List<String>> part1() {
    final file = FilesService.getInputFile(day: 1, dayPart: DayPart.a);
    return file.readAsLines();
  }
}
