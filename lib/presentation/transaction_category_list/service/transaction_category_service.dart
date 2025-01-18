import 'dart:convert';

import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionCategoryService {
  Future<List<Transaction>> loadTransactions(Category category, DateTime dateTime) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    final filteredTransactions = transactionList
        .map((jsonString) {
          try {
            return Transaction.fromJson(jsonDecode(jsonString));
          } catch (e) {
            return null;
          }
        })
        .where((transaction) {
          if (transaction != null && transaction.date.month == dateTime.month) {
            return transaction.category?.title == category.title;
          }
          return false;
        })
        .cast<Transaction>()
        .toList();

    filteredTransactions.sort((a, b) => b.date.compareTo(a.date));
    return filteredTransactions;
  }

  double getTotalCash(List<Transaction> transactions, DateTime months) {
    var count = 0.0;
    for (var transaction in transactions) {
      if (transaction.date.month == months.month) {
        count += transaction.cash;
      }
    }
    return count;
  }

  String getDate(List<Transaction> transactions) {
    if (transactions.isEmpty) return '';

    DateTime dateTime = transactions.first.date;
    DateFormat formatter = DateFormat('MMMM yyyy');
    return formatter.format(dateTime);
  }
}
