import 'package:finance_app/core/home/models/account.dart';
import 'package:finance_app/core/home/models/type_spending.dart';
import 'package:finance_app/core/home/models/category.dart';

class Transaction {
  final int amount;
  final DateTime date;
  final String? note;
  final Account account;
  final Category category;
  final TypeSpending typeSpending;

  const Transaction({
    required this.amount,
    required this.date,
    required this.category,
    required this.typeSpending,
    required this.account,
    this.note,
    }
  );
}