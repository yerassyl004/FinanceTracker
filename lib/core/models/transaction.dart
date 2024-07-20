import 'dart:convert';

import 'package:finance_app/core/models/account.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:finance_app/core/models/type_spending.dart';

class Transaction {
  final double cash;
  final DateTime date;
  final String? note;
  final Account account;
  final Category? category;
  final TypeSpending typeSpending;
  final Account? destination;

  Transaction({
    required this.cash,
    required this.date,
    required this.note,
    required this.account,
    this.category,
    required this.typeSpending,
    this.destination,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      cash: json['cash'],
      date: DateTime.parse(json['date']),
      note: json['note'],
      account: Account.fromJson(json['account']),
      category: json['category'] != null ? Category.fromJson(json['category']) : null,
      typeSpending: TypeSpending.values[json['typeSpending']],
      destination: json['destination'] != null ? Account.fromJson(json['destination']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cash': cash,
      'date': date.toIso8601String(),
      'note': note,
      'account': account.toJson(),
      'category': category?.toJson(),
      'typeSpending': typeSpending.index,
      'destination': destination?.toJson(),
    };
  }

  
}
