import 'dart:async';

import 'package:finance_app/data/data_source/storage.dart';

class Session {
  static Session? instance;

  late Completer signWaiter;

  final Storage _storage;

  Session._internal(this._storage) {
    instance = this;
    signWaiter = Completer();
  }

  String get getCountryCode => _storage.get('countryCode') ?? 'KZ';
}