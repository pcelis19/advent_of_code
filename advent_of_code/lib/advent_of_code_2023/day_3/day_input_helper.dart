import 'dart:io';

import 'package:advent_of_code/advent_of_code.dart';

mixin AOC2023D3InputHelper {
  Future<List<AOC2023D3P1InputRow>> getPartA(File file) async {
    final lines = await file.readAsLines();
    final rows = <AOC2023D3P1InputRow>[];
    for (final line in lines) {
      rows.add(AOC2023D3P1InputRow.parseWord(line));
    }
    return rows;
  }

  Future<AOC2023D3P1InputModel> getPartB(File file) async {
    final lines = await file.readAsLines();
    final rows = <AOC2023D3P1InputRow>[];
    for (final line in lines) {
      rows.add(AOC2023D3P1InputRow.parseWord(line));
    }
    return AOC2023D3P1InputModel(rows: rows);
  }
}
