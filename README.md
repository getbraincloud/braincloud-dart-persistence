
# brainCloud Dart Persistence Helper

The brainCloud Dart Persistence Helper package provides persistence support for the brainCloud Dart SDK by integrating platform preferences using SharedPreferencesAsync.

## Features

- Simplifies data storage and retrieval by leveraging SharedPreferencesAsync.
- Facilitates seamless integration with the brainCloud Dart SDK.
    

## Getting started

To use this package, add it to your project dependencies:
```shell
flutter pub add braincloud_dart_peristence
```

## Usage

Initialize the BrainCloudWrapper with the persistence helper during setup:

```dart
import 'package:braincloud_dart/braincloud_dart.dart';
import 'package:braincloud_dart_persistence/braincloud_dart_persistence.dart';

final bcWrapper = BrainCloudWrapper(
  wrapperName: "FlutterTest",
  persistence: DataPersistence(),
);

```

## Custom Persistence Class

If you prefer to implement your own persistence logic, you can create a class that implements the DataPersistenceBase interface and pass it to the BrainCloudWrapper during initialization.

Example:
```dart
class CustomPersistence implements DataPersistenceBase {
  @override
  Future<void> save(String key, String value) async {
    // Custom logic to save data
  }

  @override
  Future<String?> load(String key) async {
    // Custom logic to retrieve data
    return null;
  }
}
```

Then, use your custom preistence class:
```dart
final bcWrapper = BrainCloudWrapper(
  wrapperName: "FlutterTest",
  persistence: CustomPersistence(),
);
```
## Additional Information

For more details on how to use brainCloud or to explore advanced features, refer to the [brainCloud documentation](https://getbraincloud.com/docs/) .