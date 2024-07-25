import 'dart:convert';

import 'package:finance_app/core/models/segment.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnalysService {
  Future<List<Transaction>> loadTransactions(
      DateTime selectedDate, TypeSpending typeSpending) async {
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
                transaction.typeSpending == typeSpending;
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

  Future<double> getExpensePercentItem(Transaction transaction) async {
    double cash = transaction.cash;
    Future<List<Transaction>> list =
        loadTransactions(transaction.date, TypeSpending.expense);
    double total = await expenseTotal(list);
    return (cash / total) * 100;
  }

  Future<double> getIncomePercentItem(Transaction transaction) async {
    double cash = transaction.cash;
    Future<List<Transaction>> list =
        loadTransactions(transaction.date, TypeSpending.income);
    double total = await incomeTotal(list);
    return (cash / total) * 100;
  }

  Future<List<Segment>> getSegmentPercentage(Future<List<Transaction>> transactionsFuture) async {
  final transactions = await transactionsFuture;
  final Map<String, double> categoryTotals = {};
  double totalAmount = 0.0;

  // Define a list of colors
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
  ];

  // Calculate total amount and category totals
  for (var transaction in transactions) {
    if (transaction.category != null) {
      totalAmount += transaction.cash;
      categoryTotals.update(
        transaction.category!.title,
        (value) => value + transaction.cash,
        ifAbsent: () => transaction.cash,
      );
    }
  }

  // Sort categories by total cash in descending order
  final sortedCategoryTotals = categoryTotals.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Calculate percentage for each category and create segments
  List<Segment> segments = sortedCategoryTotals.map((entry) {
    final category = transactions
        .firstWhere((transaction) => transaction.category!.title == entry.key)
        .category!;
    final colorIndex = sortedCategoryTotals.indexOf(entry) % colors.length; // Use modulo to cycle through colors if there are more categories than colors
    return Segment(
      color: colors[colorIndex],
      percent: (entry.value / totalAmount) * 100,
      icon: category.icon,
    );
  }).toList();

  return segments;
}
}
