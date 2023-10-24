import 'dart:io';

String currentProjectPath = '';

void setCurrentProjectPath() {
  currentProjectPath = Directory.current.path;
}