import 'package:braincloud/data_persistence.dart' show DataPersistenceBase;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Uses SharedPreferencesAsync to persists String values
/// to the current platform preferences store.
class SecureDataPersistence implements DataPersistenceBase {
  final FlutterSecureStorage _playerPrefs = FlutterSecureStorage();

  /// Set a String value
  @override
  Future setString(String key, String value) async {
    return _playerPrefs.write(key:key, value:value);
  }

  /// Get a String value
  @override
  Future<String?> getString(String key) {
    return _playerPrefs.read(key:key);
  }
}
