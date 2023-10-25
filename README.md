## Dart Clean Arch Generator

A Dart package to generate Clean Architecture boilerplate with different design pattern for Bloc state management such as clean arch and mvc

## Table of Contents

- [Installation][#installation]
- [Usage][#usage]
- [Folder Structure][#folder-structure]
- [License][#license]


## Installation

1. Add 'dart_clean_generator'
 as a dev dependency in your 'pubspec.yaml';

 ```
 dev_dependencies:
   dart_clean_generator: 1.0.0
 ```

2. Run 'dart pub get' to fetch the package 

To generate the boilerplate code for your project, run the following command: 
Activate it with
```shell
 dart run dart_clean_generator
```
This command generates a clean architecture folder structure for Bloc based applications

## Usage

## 1 Clean Architecture

To generate the boilerplate code for your project, run the following command:

```dart
dart run dart_clean_generator --cleanArch build
```

This command will create a new folder structure and files for the Clean architecture

## Folder Structure

The generated folder structure is as follows:

```
lib/
│
├── app/
│   ├── config/
│   ├── core/
│   ├── utils/
|        └── global_functions.dart
|        └── failure.dart
|        └── validator.dart
│   
│   
│
├── data/
│   ├── models/
│   ├── repositories/
│   ├── data_sources/
│      
│      
│
├── domain/
│   ├── entities/
│   ├── usecases/
│   │__ repositories/
│    
│   
│      
└── presentation/
    ├── bloc/
    |── controllers/
    ├── pages/
    └── widgets/  


└── bloc_observers.dart
└── generator.dart 

```

## 2 MVC (Model View Controller)

To generate the boilerplate code for your project, run the following command:

```dart
dart run dart_clean_generator --mvc build
```

This command will create a new folder structure and files for the Clean architecture

## Folder Structure

The generated folder structure is as follows:

```
lib
└── core
    └── locator
    └── services
    └── constants
    └── utils
        └── global_functions.dart
        
└── data
    └── models
    └── repositories
    └── data_sources
        
└── bloc  
└── controllers
└── views

└── bloc_observers.dart
└── generator.dart

```



## License

This project is licensed under the MIT License.

Remember to adjust the version number and any other information as needed. Save this README as `README.md` in the root directory of your package. This will help users understand how to use your package and provide a clear overview of its features and usage.