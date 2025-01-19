import 'package:braincloud/data_persistence.dart' show DataPersistenceBase;
import 'package:shared_preferences/shared_preferences.dart';

/// Uses SharedPreferencesAsync to persists String values
/// to the current platform preferences store.
class DataPersistence implements DataPersistenceBase {
  final SharedPreferencesAsync _playerPrefs = SharedPreferencesAsync();

  /// Set a String value
  @override
  Future setString(String key, String value) async {
    return _playerPrefs.setString(key, value);
  }

  /// Get a String value
  @override
  Future<String?> getString(String key) {
    return _playerPrefs.getString(key);
  }
}
