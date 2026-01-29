import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageUtil {
  static final SecureStorageUtil _instance = SecureStorageUtil._internal();
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  factory SecureStorageUtil() {
    return _instance;
  }

  SecureStorageUtil._internal();

  static FlutterSecureStorage get storage => _instance._storage;
}