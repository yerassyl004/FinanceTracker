import 'package:finance_app/presentation/analysis/ui/widgets/analys_type_spending_widget.dart';
import 'package:finance_app/presentation/home/repositories/count_cash_service.dart';
import 'package:finance_app/data/models/type_spending.dart';
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
  HomeRepository cashService = HomeRepository();
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
            offset: const Offset(0, 4),
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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnalysTypeSpendingWidget(typeSpending: TypeSpending.expense, isSelected: TypeSpending.expense == selectedType, onTap: _onSelectedType),
              const SizedBox(width: 42),
              AnalysTypeSpendingWidget(typeSpending: TypeSpending.income, isSelected: TypeSpending.income == selectedType, onTap: _onSelectedType),
            ],    
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
