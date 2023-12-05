import 'package:advent_of_code_2023/days/day_2/repos/day_2_repo.dart';
import 'package:dart_advent_of_code_core/dart_advent_of_code_core.dart';

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
