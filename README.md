## Olawills Dart Generator

To generate the boilerplate code for your project, run the following command: 
Activate it with
```shell
 dart pub run olawills_clean_arch_gen
```
This command generates a clean architecture folder structure for Bloc base applications

if you do not want to delete manually created folders along with code generation, u can pass in the --delete-existing-folders to false
```shell
 dart pub run olawills_clean_arch_gen --delete-existing-folders=false
```
if you do not pass in the extra parameter, it will go to the default which is to delete and generate new folder structure


- You can modify the generator.dart file to change the folder structure to your taste.
- This project was made to simplify the manual process of creating file, and it is majorly based on clean architecture and bloc

#### Screeshots of Folder Structure

## Folder Structure

The generated folder structure is as follows:

```
lib/
│
├── app/
│   ├── config/
│   ├── core/
│   ├── utils/
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

```

## License

This project is licensed under the MIT License.

Remember to adjust the version number and any other information as needed. Save this README as `README.md` in the root directory of your package. This will help users understand how to use your package and provide a clear overview of its features and usage.