import 'package:advent_of_code_2022/lib.dart';

class IOCalorieCountingRepo extends ICalorieCountingRepo {
  const IOCalorieCountingRepo();
  @override
  Future<List<String>> getInput() async {
    final filePath = FilePath.currentDir(
      subDir: 'input_files',
      fileName: 'calorie_counting_input.txt',
    );
    final input = await filePath.readAsLines();
    return input;
  }
}
