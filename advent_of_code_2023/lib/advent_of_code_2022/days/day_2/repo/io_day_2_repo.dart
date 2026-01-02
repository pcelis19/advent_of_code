import 'package:advent_of_code_2022/days/day_2/repo/day_2_repo.dart';
import 'package:advent_of_code_2022/lib.dart';

class IODay2Repo extends IDay2Repo {
  const IODay2Repo();
  @override
  Future<List<String>> getInput(DayParts dayParts) {
    final file = FilesService.getInputFile(day: 2, fileName: dayParts.fileName);
    return file.readAsLines();
  }
}
