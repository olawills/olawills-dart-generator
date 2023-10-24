import 'dart:io';

String currentProjectPath = 'lib/';

void setCurrentProjectPath() {
  currentProjectPath = Directory.current.path;
}
