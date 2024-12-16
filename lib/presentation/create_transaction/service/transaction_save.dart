import 'dart:convert';

import 'package:finance_app/data/models/transaction.dart';
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

  void updateTransactions(Transaction newTransaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    var transactions = transactionList.map((jsonString) {
      return Transaction.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < transactions.length; i++) {
      if (transactions[i].id == newTransaction.id) {
        transactions[i] = newTransaction;
        break;
      }
    }

    final updatedTransactionList = transactions.map((transaction) {
      return jsonEncode(transaction.toJson());
    }).toList();

    await prefs.setStringList('transactions', updatedTransactionList);
  }
}
