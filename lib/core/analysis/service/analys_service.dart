import 'dart:convert';

import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnalysService {
  Future<List<Transaction>> loadTransactions(DateTime selectedDate, TypeSpending typeSpending) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    return transactionList
        .map((jsonString) {
          try {
            return Transaction.fromJson(jsonDecode(jsonString));
          } catch (e) {
            return null;
          }
        })
        .where((transaction) {
          if (transaction != null) {
            return transaction.date.year == selectedDate.year &&
                transaction.date.month == selectedDate.month &&
                transaction.typeSpending == TypeSpending.expense;
          }
          return false;
        })
        .cast<Transaction>()
        .toList();
  }

  Future<double> expenseTotal(
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

  Future<double> incomeTotal(
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

  Future<double> getPercentItem(Transaction transaction) async {
    double cash = transaction.cash;
    Future<List<Transaction>> list = loadTransactions(transaction.date, TypeSpending.expense);
    double total = await expenseTotal(list);
    return (cash / total) * 100;
  }

  Future<double> getIncomePercentItem(Transaction transaction) async {
    double cash = transaction.cash;
    Future<List<Transaction>> list = loadTransactions(transaction.date, TypeSpending.income);
    double total = await expenseTotal(list);
    return (cash / total) * 100;
  }
}
