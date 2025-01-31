import 'dart:convert';

import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:uuid/uuid.dart';

class Transaction {
  final String id;
  double cash;
  DateTime date;
  String? note;
  Account? account;
  Category? category;
  TypeSpending typeSpending;
  Account? destination;

  Transaction({
    String? id,
    required this.cash,
    required this.date,
    required this.note,
    this.account,
    this.category,
    required this.typeSpending,
    this.destination,
  }) : id = id ?? const Uuid().v4();

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      cash: json['cash'],
      date: DateTime.parse(json['date']),
      note: json['note'],
      account: json['account'] != null
          ? Account.fromJson(jsonDecode(json['account']))
          : null,
      category: json['category'] != null
          ? Category.fromJson(jsonDecode(json['category']))
          : null,
      typeSpending: TypeSpending.values[json['typeSpending']],
      destination: json['destination'] != null
          ? Account.fromJson(jsonDecode(json['destination']))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cash': cash,
      'date': date.toIso8601String(),
      'note': note,
      'account': account != null ? jsonEncode(account!.toJson()) : null,
      'category': category != null ? jsonEncode(category!.toJson()) : null,
      'typeSpending': typeSpending.index,
      'destination':
          destination != null ? jsonEncode(destination!.toJson()) : null,
    };
  }

  Transaction copyWith({
      double? cash,
      DateTime? date,
      String? note,
      TypeSpending? typeSpending,
      Account? account,
      Category? category,
      Account? destination}) {
    return Transaction(
        id: id,
        cash: cash ?? this.cash,
        date: date ?? this.date,
        note: note ?? this.note,
        typeSpending: typeSpending ?? this.typeSpending,
        account: account ?? this.account,
        category: category ?? this.category,
        destination: destination ?? this.destination);
  }

  Transaction clear() {
    return Transaction(
        cash: 0,
        date: DateTime.now(),
        note: '',
        typeSpending: typeSpending,
        account: null,
        category: null,
        destination: null);
  }
}
