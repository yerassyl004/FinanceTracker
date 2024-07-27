import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/material.dart';

class AnalysTypeSpendingWidget extends StatelessWidget {
  final TypeSpending typeSpending;
  final bool isSelected;
  final Function(TypeSpending) onTap;
  const AnalysTypeSpendingWidget(
      {super.key, required this.typeSpending, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(typeSpending);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? typeSpending == TypeSpending.expense
                  ? Colors.orange.shade100
                  : Colors.green.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(24),
          // border: Border.all(
              // color: isSelected ? typeSpending == TypeSpending.expense
              //     ? Colors.orange
              //     : Colors.green : Colors.transparent,
              // width: isSelected ? 1.0 : 0.0),
        ),
        child: Text(
          typeSpending == TypeSpending.expense ? 'Expense' : 'Income',
          style: TextStyle(
              color: isSelected ? typeSpending == TypeSpending.expense
                  ? Colors.orange
                  : Colors.green : Colors.black,
                   fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
