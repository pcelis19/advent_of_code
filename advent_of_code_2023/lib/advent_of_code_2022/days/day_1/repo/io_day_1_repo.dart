import 'dart:io';

import 'package:advent_of_code_2022/lib.dart';

class IOCalorieCountingRepo extends IDay1Repo {
  const IOCalorieCountingRepo();
  @override
  Future<List<String>> getInput(DayParts day1Part) async {
    final file = FilesService.getInputFile(day: 1, fileName: day1Part.fileName);
    final input = await file.readAsLines();
    return input;
  }
}
