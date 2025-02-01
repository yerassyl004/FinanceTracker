import 'package:finance_app/presentation/home/ui/widgets/categories_widgets.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderWidget extends StatelessWidget {
  final List<Transaction> transactionsFuture;
  final Function(DateTime) onDateChanged;
  final double expenseAmount;
  final double incomeAmount;
  final DateTime currentDate;

  const HeaderWidget({
    super.key,
    required this.transactionsFuture,
    required this.onDateChanged,
    required this.expenseAmount,
    required this.incomeAmount,
    required this.currentDate,
  });

  void _previousMonth() {
    onDateChanged(DateTime(currentDate.year, currentDate.month - 1));
  }

  void _nextMonth() {
    onDateChanged(DateTime(currentDate.year, currentDate.month + 1));
  }

  @override
  Widget build(BuildContext context) {
    final categoryWidth = (MediaQuery.of(context).size.width - 16) / 3;
    final total = incomeAmount - expenseAmount;
    final padding = MediaQuery.of(context).padding;
    String monthYear = DateFormat('MMMM, yyyy').format(currentDate);

    return Container(
      padding: EdgeInsets.only(top: padding.top),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _previousMonth,
                icon: const Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: 170,
                child: Text(
                  monthYear,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                onPressed: _nextMonth,
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: categoryWidth,
                  child: CategoriesWidgets(
                    category: AppStrings.expenseText,
                    cash: expenseAmount.toStringAsFixed(2),
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: categoryWidth,
                  child: CategoriesWidgets(
                    category: AppStrings.incomeText,
                    cash: incomeAmount.toStringAsFixed(2),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: categoryWidth,
                  child: CategoriesWidgets(
                    category: AppStrings.balanceText,
                    cash: total.toStringAsFixed(2),
                    color: total > 0 ? Colors.blue : Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
