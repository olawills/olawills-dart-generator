import 'dart:io';

import 'package:dart_clean_generator/src/globals.dart';

class MvcBoilerPlate {
  Future<void> generate() async {
    // Core Layer
    await Directory('lib/core/di').create(recursive: true);
    await Directory('lib/core/services').create(recursive: true);
    await Directory('lib/core/constants').create(recursive: true);
    await Directory('lib/core/utils').create(recursive: true);
    generateGlobalFunctions(path: 'lib/core/utils');

    // Data Layer
    await Directory('lib/data/models').create(recursive: true);
    await Directory('lib/data/data_sources').create(recursive: true);
    await Directory('lib/data/repositories').create(recursive: true);

    // State Management Layer
    await Directory('lib/bloc').create(recursive: true);

    // Controller Layer
    await Directory('lib/controllers').create(recursive: true);

    // Views
    await Directory('lib/views').create(recursive: true);

    // Create generator.dart file
    generateFile(path: 'lib/');
    generateBlocObservers(path: 'lib/');
  }
}
