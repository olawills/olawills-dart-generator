import 'dart:io';

import 'package:ansicolor/ansicolor.dart';
import 'package:args/args.dart';
import 'package:dart_clean_generator/src/generator_runner.dart';

void main(List<String> arguments) async {
  AnsiPen redPen = AnsiPen()..red(bold: true);
  AnsiPen greenPen = AnsiPen()..green(bold: true);

  try {
    final parser = ArgParser()
      ..addFlag('cleanArch', help: 'Generate Clean Architecture boilerplate')
      ..addFlag('mvc', help: 'Generate MVC boilerplate')
      ..addCommand('build');

    final results = parser.parse(arguments);
    if (results.command == null) {
      throw ('Please provide a valid command, e.g., "build".');
    }
    if (results.command!.name == 'build') {
      final isClean = results['cleanArch'] as bool;
      final isMvc = results['mvc'] as bool;
      if (isClean && isMvc) {
        throw ('Only one architecture command is required');
      } else if (isClean || isMvc) {
        if (isClean) {
          await runGenerators(architecturePattern: ArchitecturePattern.clean);
        } else if (isMvc) {
          await runGenerators(architecturePattern: ArchitecturePattern.mvc);
        }
      } else {
        throw ('Please provide atleast one architecture command. e.g, "--cleanArch,--mvc"');
      }
      print(greenPen(
          'Your Architecture boilerplate has been succesfully generated! Check your lib/ directory for the new structure'));
    } else {
      throw ('Unknown command: ${results.command!.name}');
    }
  } catch (e) {
    print(redPen(e.toString()));
    exit(1);
  }
}
