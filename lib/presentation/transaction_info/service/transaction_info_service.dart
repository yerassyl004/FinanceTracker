import 'dart:convert';

import 'package:finance_app/data/models/transaction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionInfoService {
  Future<void> deleteTransaction(Transaction transaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    var transactions = transactionList.map((jsonString) {
      return Transaction.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < transactions.length; i++) {
      if (transactions[i].id == transaction.id) {
        transactions.remove(transactions[i]);
        break;
      }
    }

    final updatedTransactionList = transactions.map((transaction) {
      return jsonEncode(transaction.toJson());
    }).toList();

    await prefs.setStringList('transactions', updatedTransactionList);
  }
}