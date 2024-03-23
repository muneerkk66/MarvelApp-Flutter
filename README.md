# Marvel App

This is the boilerplate template repository for flutter projects. This showcases common use cases and a base architecture.

## Getting Started

This project uses a MVVMI/Bloc Clean architecture. Navigation events and State updates are routed via streams between various BLOCs. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project.

### How to Use

**Step 1:**

Download or clone this repo.


**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**Step 3:**

This project uses `kiwi`, `freezed` and `mockito` that work with code generation. Execute the following command to run codegen:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and add the following line to your `ignore files and folders` section:

```
*.g.dart;
*.freezed.dart;
*.mocks.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following pattern:
```
**/*.g.dart
**/*.freezed.dart;
**/*.mocks.dart;
```

## Additional Installation

Code coverage generation depends on lcov package to be present to transform `lcov.info` into dense html files. This can be done using brew:

`brew install lcov`

## Styling

The app uses dart styling/formatting and enforces this via the `dartfmt` package.

```
flutter pub global activate dart_style

dartfmt --help
```

## Environment Variable Support

We are using [dynamic_config_generator](https://pub.dev/packages/dynamic_config_generator) to generate the debug and release environment vars based on `config.json` that resides in the `tool` directory.

## Boilerplate Features:

* Splash
* Home
* Theme
* Dio
* Bloc (State Management)
* Validation
* Code Generation
* Logging
* Dependency Injection

### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Rx Dart](https://github.com/ReactiveX/rxdart) (to connect the reactive data of your application with the UI)
* [Flutter Bloc](https://github.com/felangel/bloc) (State Management)
* [Retrofit](https://pub.dev/packages/retrofit)
* [Freezed](https://pub.dev/packages/freezed)
* [Fast Immutable Collections](https://pub.dev/packages/fast_immutable_collections)
* [Json Serialization](https://github.com/dart-lang/json_serializable)
* [Dependency Injection](https://github.com/letsar/kiwi)
* [Logging](https://github.com/leisim/logger)

### Folder Structure
Here is the core folder structure which flutter provides:

```
flutterapp/
|- android
|- build
|- ios
|- lib
|- test
```

And here is the folder structure we have been using:

```
lib/
|- core/
|- api/
|- blocs/
|- data/
|- presentation/
|- tool/
|- domain/
|- inject/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application:

```
1- core - All the application level constants are defined in this directory with-in their respective files. Also a store for contract classes housing ui contracts and view events and view states for each of the screens
2- api- Contains the api layer of your project, includes directories for local, network data and client.
3- domain- These would be abstractions based on domain which would be backed by use cases and entities
4- bloc- The business logic of each screen would be here.
5- presentation all the ui of your project, contains sub directory for each screen.
7- utils - This directory contains the constants for `theme`, `dimensions`, and `strings`.
8- inject - Contains code for kiwi's dependecy injection/service location.
10- data- contains repositories and services
11- main.dart - This is the starting point of the application.
```

## Testing

Flutter allows testing via a simple command:

```
flutter test
```

However, the catch is that individual files need to end with `_test.dart`

This makes for a good use case to implement meta features like code coverage.
Currently this is being done by invoking a test in `coverage.dart` which parses
the generated html to figure out if the coverage is met.

One can just run
```
./scripts/checks.sh
```
for verifying everything works.
`Note: you may need to do a chmod +x checks.sh before executing it.`
Also this script depends on brew and can be run only on a mac os.


#### Freezed

Code snippet to quickly create `freezed` data classes:

```dart
@freezed
class $NAME$ with _$$$NAME$ {
    factory $NAME$($END$) = _$NAME$;
}
```

Code snippet to quickly create `freezed` union/sealed classes:

```dart
@freezed
class $NAME$ with _$$$NAME$ {
  const factory $NAME$.$END$() = _$NAME$;
}
```

### Required improvements:
* Offline Storage
* More detailed UI tests
* Build variants using [dynamic_config_generator](https://pub.dev/packages/dynamic_config_generator)
