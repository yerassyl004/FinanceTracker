import 'package:finance_app/presentation/analysis/ui/widgets/analys_type_spending_widget.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnalysHeaderWidget extends StatelessWidget {
  final Function(DateTime) onDateChanged;
  final Function(TypeSpending) typeSpending;
  final DateTime currentDate;
  final TypeSpending selectedType;

  const AnalysHeaderWidget(
      {super.key,
      required this.onDateChanged,
      required this.typeSpending,
      required this.currentDate,
      required this.selectedType});

  void _previousMonth() {
    onDateChanged(DateTime(currentDate.year, currentDate.month - 1));
  }

  void _nextMonth() {
    onDateChanged(DateTime(currentDate.year, currentDate.month + 1));
  }

  void _onSelectedType(TypeSpending typeSpending) {
    this.typeSpending(typeSpending);
  }

  @override
  Widget build(BuildContext context) {
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
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _previousMonth,
                icon: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: 170,
                child: Text(
                  monthYear,
                  style: AppTextStyle.body16Medium(),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                onPressed: _nextMonth,
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnalysTypeSpendingWidget(
                  typeSpending: TypeSpending.expense,
                  isSelected: TypeSpending.expense == selectedType,
                  onTap: _onSelectedType),
              SizedBox(width: 42),
              AnalysTypeSpendingWidget(
                  typeSpending: TypeSpending.income,
                  isSelected: TypeSpending.income == typeSpending,
                  onTap: _onSelectedType),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
