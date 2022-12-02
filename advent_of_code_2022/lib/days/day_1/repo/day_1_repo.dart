import 'package:advent_of_code_2022/lib.dart';

abstract class IDay1Repo {
  const IDay1Repo();

  Future<List<String>> getInput(DayParts day1Part);
}
