import 'package:finance_app/core/home/models/type_spending.dart';
import 'package:flutter/material.dart';

class CashTransactionWidget extends StatelessWidget {
  final TypeSpending typeSpending;
  final String cash;
  const CashTransactionWidget({
    super.key,
    required this.typeSpending,
    required this.cash
  });

  Color color(TypeSpending typeSpending) {
    switch (typeSpending) {
      case TypeSpending.expense:
        return Colors.red;
      case TypeSpending.income:
        return Colors.green;
      case TypeSpending.transfer:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Text(
      typeSpending == TypeSpending.expense ?
      '-₸$cash' : 
      '₸$cash',
      style: TextStyle(
        color: color(typeSpending),
        fontSize: 16
      ),
    );
  }
}