import 'package:finance_app/presentation/analysis/ui/widgets/analys_type_spending_widget.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnalysHeaderWidget extends StatefulWidget {
  final Function(DateTime) onDateChanged;
  final Function(TypeSpending) typeSpending;

  const AnalysHeaderWidget({
    super.key,
    required this.onDateChanged,
    required this.typeSpending
  });

  @override
  _AnalysHeaderWidgetState createState() => _AnalysHeaderWidgetState();
}

class _AnalysHeaderWidgetState extends State<AnalysHeaderWidget> {
  late DateTime _currentDate;
  var selectedType = TypeSpending.expense;

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  void _previousMonth() {
    setState(() {
      _currentDate = DateTime(_currentDate.year, _currentDate.month - 1);
    });
    widget.onDateChanged(_currentDate);
  }

  void _nextMonth() {
    setState(() {
      _currentDate = DateTime(_currentDate.year, _currentDate.month + 1);
    });
    widget.onDateChanged(_currentDate);
  }

  void _onSelectedType(TypeSpending typeSpending) {
    setState(() {
      selectedType = typeSpending;
    });
    widget.typeSpending(typeSpending);
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    String monthYear = DateFormat('MMMM, yyyy').format(_currentDate);

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
              AnalysTypeSpendingWidget(typeSpending: TypeSpending.expense, isSelected: TypeSpending.expense == selectedType, onTap: _onSelectedType),
              SizedBox(width: 42),
              AnalysTypeSpendingWidget(typeSpending: TypeSpending.income, isSelected: TypeSpending.income == selectedType, onTap: _onSelectedType),
            ],    
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
