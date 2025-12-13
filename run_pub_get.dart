import 'dart:io';

Future<void> main() async {
  final rootDir = Directory.current;

  if (!await rootDir.exists()) {
    print('❌ The "packages" directory does not exist.');
    exit(1);
  }

  // List all folders inside "packages/"
  final subDirs = rootDir
      .listSync()
      .whereType<Directory>()
      .where((dir) => File('${dir.path}/pubspec.yaml').existsSync())
      .toList();

  if (subDirs.isEmpty) {
    print('⚠️ No Flutter packages found inside "packages/".');
    return;
  }

  for (var dir in subDirs) {
    print('\n🚀 Running "flutter pub get" in ${dir.path} ...');

    final result = await Process.start(
      'flutter',
      ['pub', 'get'],
      workingDirectory: dir.path,
      runInShell: true,
    );

    // Stream stdout and stderr live
    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);

    final exitCode = await result.exitCode;
    if (exitCode == 0) {
      print('✅ Successfully ran "flutter pub get" in ${dir.path}');
    } else {
      print(
        '❌ Failed to run "flutter pub get" in ${dir.path} (exit code $exitCode)',
      );
    }
  }

  print('\n🎉 All done!');
}
