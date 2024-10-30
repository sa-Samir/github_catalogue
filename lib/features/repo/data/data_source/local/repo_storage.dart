import 'package:shared_preferences/shared_preferences.dart';

class RepoStorage {
  final SharedPreferences _preferences;
  RepoStorage(this._preferences);

  static const _storageKey = 'REPO';

  void storeData({required String jsonString}) async {
    await _preferences.setString(_storageKey, jsonString);
  }

  Future<String?> fetchData() async {
    final storedJson = _preferences.get(_storageKey) as String?;
    return storedJson;
  }
}
