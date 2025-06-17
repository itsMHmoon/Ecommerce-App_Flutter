import 'dart:io';

void main() {
  final pubspecFile = File('pubspec.yaml');
  final content = pubspecFile.readAsStringSync();

  final versionRegex = RegExp(r'version:\s*(\d+\.\d+\.\d+)\+(\d+)');
  final match = versionRegex.firstMatch(content);

  if (match != null) {
    final mainVersion = match.group(1);
    final buildNumber = int.parse(match.group(2)!) + 1;
    final newVersion = '$mainVersion+$buildNumber';

    final updatedContent = content.replaceFirst(versionRegex, 'version: $newVersion');
    pubspecFile.writeAsStringSync(updatedContent);

    print('Updated version to $newVersion');
  } else {
    print('Version format not found in pubspec.yaml');
  }
}
