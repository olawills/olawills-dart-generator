import 'dart:io';

import 'generator.dart';

void main() async {
  print(
      "Please Provide a path to the folder of your flutter project (e.g /Users/olawills/Desktop/test_app/lib)");

  String? parentPath = stdin.readLineSync();

  if (parentPath == null) {
    print("You must provide a path");
    exit(0);
  }
// Get a list of all the existing folders and files in the parent path.
  final existingFilesAndFolders = Directory(parentPath).listSync();

// Delete any existing folders or files that are not in the correct structure.
  for (var fileOrFolder in existingFilesAndFolders) {
    if (!directories.keys.contains(fileOrFolder.path) &&
        fileOrFolder.path != 'main.dart') {
      fileOrFolder.deleteSync(recursive: true);
    }
  }

  directories.forEach((directory, fileNames) async {
    String? fullPath = '/$parentPath/$directory';

    final dir = await createDirectory(fullPath);

    if (dir == null) {
      print("Failed to create directory: $directory");
    } else {
      print("=> $directory created");
    }
    for (String fileName in fileNames) {
      final file = await createFile(fullPath, fileName);
      if (file == null) {
        print("Failed to create file :$fileName");
      }
    }
  });
  // Generate the generator.dart file.
  final generatorFile = await createFile(parentPath, 'generator.dart');
  if (generatorFile == null) {
    print('Failed to create generator.dart file.');
  } else {
    // Add the message to the generator.dart file.
    await generatorFile.writeAsString('''
// This file was generated by a Olawills Flutter project generator.
// Do not edit this file manually.
// If you need to modify your project structure, please use the generator script.
// For suggestions, modifications and more features, please feel free to make a pull request


// Share, like and follow https://github.com/olawills
''');
  }
}