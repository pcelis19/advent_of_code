import 'package:advent_of_code_2023/advent_of_code_2023.dart';

class IODay2Repo extends Day2Repo {
  @override
  Future<List<String>> getPartA() async {
    final file = FilesService.getInputFile(day: 2, dayPart: DayPart.a);
    return file.readAsLines();
  }

  @override
  Future<List<String>> getPartB() {
    final file = FilesService.getInputFile(day: 2, dayPart: DayPart.b);
    return file.readAsLines();
  }
}
