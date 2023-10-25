import 'dart:io';

import 'package:dart_clean_generator/src/globals.dart';
import 'package:dart_clean_generator/src/value_obj_generator.dart';

class CleanArchitectureGen {
  Future<void> generate() async {
    // App Layer
    await Directory('lib/app/config/di').create(recursive: true);
    await Directory('lib/app/config/constants').create(recursive: true);
    await Directory('lib/app/core/services/local_storage')
        .create(recursive: true);
    await Directory('lib/app/core/services/network').create(recursive: true);
    await Directory('lib/app/utils').create(recursive: true);
    generateFailureClasses(path: 'lib/app/core/failure');
    generateGlobalFunctions(path: 'lib/app/utils');
    generateValueObjects(path: 'lib/app/utils');

    // Data Layer
    await Directory('lib/data/models').create(recursive: true);
    await Directory('lib/data/data_sources').create(recursive: true);
    await Directory('lib/data/repositories').create(recursive: true);

    // Domain Layer
    await Directory('lib/domain/entities').create(recursive: true);
    await Directory('lib/domain/usecases').create(recursive: true);
    await Directory('lib/data/repositories').create(recursive: true);

    // Presentation Layer
    await Directory('lib/presentation/bloc').create(recursive: true);
    await Directory('lib/presentation/controllers').create(recursive: true);
    await Directory('lib/presentation/pages').create(recursive: true);
    await Directory('lib/presentation/widgets').create(recursive: true);

    // Create generator.dart file
    generateFile(path: 'lib/');
    generateBlocObservers(path: 'lib/');
  }
}
