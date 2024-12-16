import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

abstract class Storage {
  dynamic get(String name);
  Future<void> put(String name, dynamic value);
}

class _HiveEncryptedStorage implements Storage {
  final Box _box;

  _HiveEncryptedStorage(this._box);

  @override
  dynamic get(String name) => _box.get(name);
  @override
  Future<void> put(String name, dynamic value) async => _box.put(name, value);
}

bool _isInit = false;

/// returns encrypted storage
Future<Storage> getStorage() async {
  if (!_isInit) {
    await Hive.initFlutter();
    _isInit = true;
  }

  /// key stored in the device's secured storage - Android KeyStore/iOS Keychain
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  String? key = await secureStorage.read(key: 'key');
  if (key == null) {
    key = base64UrlEncode(Hive.generateSecureKey());
    await secureStorage.write(key: 'key', value: key);
  }

  final encryptionKey = base64Url.decode(key);
  late Box encryptedBox;

  Future<Box> openStorage() => Hive.openBox('storage', encryptionCipher: HiveAesCipher(encryptionKey));

  try {
    encryptedBox = await openStorage();
  } catch (e) {
    Logger.root.severe(e);
    Hive.deleteBoxFromDisk('storage');
    encryptedBox = await openStorage();
  }

  return _HiveEncryptedStorage(encryptedBox);
}