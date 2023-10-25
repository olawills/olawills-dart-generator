import 'dart:io';

Future<void> generateValueObjects({required String path}) async {
  final filename = 'validators.dart';

  final fileContent = """
class Email {
  final String value;

  Email(this.value) {
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\\\\.[a-zA-Z]+").hasMatch(value)) {
      throw FormatException("Invalid email format");
    }
  }

  class Password {
  final String value;

  Password(this.value) {
    if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\\\\d)[A-Za-z\\\\d]{8,}\$").hasMatch(value)) {
      throw FormatException("Invalid password format");
    }
  }
  
  class PhoneNumber {
  final String value;

  PhoneNumber(this.value) {
    if (!RegExp(r"^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
      throw FormatException("Invalid phone number format");
    }
  }
}

""";

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}
