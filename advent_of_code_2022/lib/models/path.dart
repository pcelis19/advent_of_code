import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;

part 'path.freezed.dart';

@freezed
class FilePath with _$FilePath {
  const FilePath._();

  const factory FilePath.currentDir({
    String? subDir,
    required String fileName,
  }) = _FilePathCurrentDirectory;

  const factory FilePath.customDir({
    required Directory directory,
    String? subDir,
    required String fileName,
  }) = _FilePathCustomDirectory;

  Directory get directory => map(
        currentDir: (_) => Directory.current,
        customDir: (customDir) => customDir.directory,
      );

  File getFile() {
    final _subDir = subDir;
    late final String path;
    if (_subDir == null) {
      path = p.join(directory.path, fileName);
    } else {
      path = p.join(directory.path, _subDir, fileName);
    }
    return File(path);
  }

  ///
  Future<Uint8List> readAsBytes() => getFile().readAsBytes();

  ///
  Future<List<String>> readAsLines() => getFile().readAsLines();

  ///
  Future<String> readAsString() => getFile().readAsString();
}
