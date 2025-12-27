import 'package:get_storage/get_storage.dart';

class SLocalStorage {
  static final SLocalStorage _instance = SLocalStorage._internal();

  factory SLocalStorage() {
    return _instance;
  }

  SLocalStorage._internal();

  final _storage = GetStorage();

  // Generoic method to save data
  Future<void> saaveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic methos to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Generic methos to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }

}