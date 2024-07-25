import 'dart:convert';

import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountCashService {
  Future<List<Transaction>> loadTransactions(DateTime selectedDate) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    return transactionList
        .map((jsonString) {
          try {
            return Transaction.fromJson(jsonDecode(jsonString));
          } catch (e) {
            // Handle invalid JSON string
            return null;
          }
        })
        .where((transaction) {
          if (transaction != null) {
            return transaction.date.year == selectedDate.year &&
                transaction.date.month == selectedDate.month;
          }
          return false;
        })
        .cast<Transaction>()
        .toList();
  }

  Future<double> expenseCount(
      Future<List<Transaction>> transactionsFuture) async {
    final transactions = await transactionsFuture;
    var count = 0.0;
    for (var transaction in transactions) {
      if (transaction.typeSpending == TypeSpending.expense) {
        count += transaction.cash;
      }
    }
    return count;
  }

  Future<double> incomeCount(
      Future<List<Transaction>> transactionsFuture) async {
    final transactions = await transactionsFuture;
    var count = 0.0;
    for (var transaction in transactions) {
      if (transaction.typeSpending == TypeSpending.income) {
        count += transaction.cash;
      }
    }
    return count;
  }
}
