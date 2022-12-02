import 'dart:io';

import 'package:advent_of_code_2022/lib.dart';
import 'package:path/path.dart' as p;

class IOCalorieCountingRepo extends ICalorieCountingRepo {
  const IOCalorieCountingRepo();
  @override
  Future<List<String>> getInput(Day1Parts day1part) async {
    final filePath = p.join(
        Directory.current.path, 'input_files', 'day_1', day1part.fileName);
    final file = File(filePath);
    final input = await file.readAsLines();
    return input;
  }
}
