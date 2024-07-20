import 'package:finance_app/core/models/account.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:finance_app/core/models/category.dart';

class Transaction {
  final int cash;
  final DateTime date;
  final String? note;
  final Account account;
  final Category category;
  final TypeSpending typeSpending;
  final Account? destination;

  const Transaction({
    required this.account,
    required this.date,
    required this.category,
    required this.typeSpending,
    required this.cash,
    this.destination,
    this.note,
    }
  );

  Map<String, dynamic> toJson() {
    return {
      'cash': cash,
      'date': date.toIso8601String(),
      'note': note,
      'account': account.toJson(),
      'category': category.toJson(),
      'typeSpending': typeSpending.index,
      'destination': destination?.toJson(),
    };
  }

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      cash: json['cash'],
      date: DateTime.parse(json['date']),
      note: json['note'],
      account: Account.fromJson(json['account']),
      category: Category.fromJson(json['category']),
      typeSpending: TypeSpending.values[json['typeSpending']],
      destination: json['destination'] != null ? Account.fromJson(json['destination']) : null,
    );
  }
}