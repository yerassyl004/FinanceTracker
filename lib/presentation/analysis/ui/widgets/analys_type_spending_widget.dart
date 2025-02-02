import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? typeSpending == TypeSpending.expense
                  ? Colors.orange.shade100
                  : Colors.green.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          typeSpending == TypeSpending.expense ? AppStrings.expenseText : AppStrings.incomeText,
          style: AppTextStyle.body18Medium().copyWith(color: isSelected ? typeSpending == TypeSpending.expense
                  ? Colors.deepOrange
                  : Colors.green.shade800 : Colors.black)
        ),
      ),
    );
  }
}
