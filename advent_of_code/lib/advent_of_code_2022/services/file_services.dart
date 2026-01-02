import 'dart:io';

import 'package:path/path.dart' as p;

mixin FilesService {
  static File getInputFile({required int day, required String fileName}) {
    if (day < 0 || day > 25) {
      throw 'Invalid day: $day';
    }
    final path = p.join(
      Directory.current.path,
      'input_files',
      'day_$day',
      fileName,
    );
    return File(path);
  }
}
