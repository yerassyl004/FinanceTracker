import 'dart:convert';

import 'package:finance_app/core/models/category.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionCategoryService {
  Future<List<Transaction>> loadTransactions(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList = prefs.getStringList('transactions') ?? [];

    final filteredTransactions = transactionList
        .map((jsonString) {
          try {
            return Transaction.fromJson(jsonDecode(jsonString));
          } catch (e) {
            return null;
          }
        })
        .where((transaction) {
          if (transaction != null) {
            return transaction.category?.title == category.title;
          }
          return false;
        })
        .cast<Transaction>()
        .toList();

    filteredTransactions.sort((a, b) => b.date.compareTo(a.date));
    return filteredTransactions;
  }
}