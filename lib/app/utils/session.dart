import 'dart:async';
import 'dart:convert';

import 'package:finance_app/data/data_source/storage.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:flutter/widgets.dart';

class Session {
  static Session? instance;

  late Completer signWaiter;

  final Storage _storage;

  Session._internal(this._storage) {
    instance = this;
    signWaiter = Completer();
  }

  String get getCountryCode => _storage.get('countryCode') ?? 'KZ';

  List<String> getTransactions() {
    return _storage.get('transactionList');
  }

  void addTransactions(Transaction transaction) {
    final List<String> transactionList = getTransactions();
    transactionList.add(jsonEncode(transaction.toJson()));
    debugPrint('added:: $transactionList');
    _storage.put('transactionList', jsonEncode(transactionList));
  }
}
