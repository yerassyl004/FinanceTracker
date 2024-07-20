import 'dart:convert';

import 'package:finance_app/core/models/transaction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionSave {
  void saveTransaction(Transaction transaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

         transactionList.add(jsonEncode(transaction.toJson()));
    await prefs.setStringList('transactions', transactionList);

    print('Transaction saved: ${transaction.toJson()}');
  }
}