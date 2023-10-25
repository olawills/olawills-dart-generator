import 'dart:io';

// waka_a3e6b83c-0b25-4574-b4a5-c101ac379

Future<void> generateGlobalFunctions({required String path}) async {
  final filename = 'global_functions.dart';
  final fileContent = """
// You can export all your utils file to this folder

""";

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}

Future<void> generateFailureClasses({required String path}) async {
  final filename = 'Failures.dart';
  final fileContent = """
import "package:equatable/equatable.dart";

// This is a generated Failure class model
// You can modify to suit your app

abstract class Failure extends Equatable{
  final String message;

  Failure(this.message);

  List<Object?> get props => [message];
}

class ServerFailure extends Failure{
  ServerFailure(String message): super(message);
}

class ApiFailure extends Failure{
  ServerFailure(String message): super(message);
}

""";
  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}

Future<void> generateFile({required String path}) async {
  final filename = 'generator.dart';
  final fileContent = """
// This file was generated by a Olawills Flutter project generator.
// Do not edit this file manually.
// If you need to modify your project structure, please use the generator script.
// you can add the --delete-existing-folders=false if u don't want to delete existing files or folder structure

// For suggestions, modifications and more features, please feel free to make a pull request





// Share, like and follow https://github.com/olawills

""";

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}

Future<void> generateBlocObservers({required String path}) async {
  final filename = 'bloc_observers.dart';
  final fileContent = """
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
   
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
  }
}

""";

  final file = File('$path/$filename');
  final sink = file.openWrite();
  sink.write(fileContent);
  await sink.flush();
  await sink.close();
}
