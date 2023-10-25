import 'package:dart_clean_generator/src/clean_arch_gen.dart';
import 'package:dart_clean_generator/src/mvc_boilerplate.dart';

Future<void> runGenerators(
    {required ArchitecturePattern architecturePattern}) async {
  if (architecturePattern == ArchitecturePattern.clean) {
    final cleanArch = CleanArchitectureGen();
    await cleanArch.generate();
  } else if (architecturePattern == ArchitecturePattern.mvc) {
    final mvcArch = MvcBoilerPlate();
    await mvcArch.generate();
  } else {
    throw ('Something went wrong with architecture command');
  }
}

enum ArchitecturePattern { clean, mvc }
