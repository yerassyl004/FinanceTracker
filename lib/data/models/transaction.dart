import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/data/models/category.dart';
import 'package:finance_app/data/models/type_spending.dart';
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
      account: Account.fromJson(json['account']),
      category:
          json['category'] != null ? Category.fromJson(json['category']) : null,
      typeSpending: TypeSpending.values[json['typeSpending']],
      destination: json['destination'] != null
          ? Account.fromJson(json['destination'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cash': cash,
      'date': date.toIso8601String(),
      'note': note,
      'account': account?.toJson(),
      'category': category?.toJson(),
      'typeSpending': typeSpending.index,
      'destination': destination?.toJson(),
    };
  }

  Transaction copyWith(
      double? cash,
      DateTime? date,
      String? note,
      TypeSpending? typeSpending,
      Account? account,
      Category? category,
      Account? destination) {
    return Transaction(
        cash: cash ?? this.cash,
        date: date ?? this.date,
        note: note ?? this.note,
        typeSpending: typeSpending ?? this.typeSpending,
        account: account ?? this.account,
        category: category ?? this.category,
        destination: destination ?? this.destination);
  }
}
