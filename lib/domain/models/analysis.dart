import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/type_spending.dart';

class Analysis {
  final Category category;
  double cash;
  final TypeSpending typeSpending;

  Analysis({required this.cash, required this.category, required this.typeSpending});

  void addCash(double amount) {
    cash += amount;
  }
}
