import 'dart:io';

import 'package:path/path.dart' as p;

enum DayPart {
  a,
  b;

  String get label => name;
}

mixin FilesService {
  static File getInputFile(
      {required int day,
      required DayPart dayPart,
      String fileExtension = '.txt'}) {
    if (day < 0 || day > 25) {
      throw 'Invalid day: $day';
    }

    final fileName =
        // ignore: prefer_interpolation_to_compose_strings
        'day_' + day.toString() + '_${dayPart.label}$fileExtension';
    // example of what it will read: assets/input_files/day_1_a
    final path = p.join(
      Directory.current.path,
      'assets',
      'input_files',
      fileName,
    );
    return File(path);
  }
}
