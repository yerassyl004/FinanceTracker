import 'package:finance_app/presentation/home/repositories/count_cash_service.dart';
import 'package:finance_app/presentation/home/ui/widgets/categories_widgets.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountsHeader extends StatefulWidget {
  final List<Transaction> transactionsFuture;
  final Function(DateTime) onDateChanged;

  const AccountsHeader({
    super.key,
    required this.transactionsFuture,
    required this.onDateChanged,
  });

  @override
  _AccountsHeaderState createState() => _AccountsHeaderState();
}

class _AccountsHeaderState extends State<AccountsHeader> {
  late DateTime _currentDate;
  HomeRepository cashService = HomeRepository();

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

  @override
  Widget build(BuildContext context) {
    final categoryWidth = (MediaQuery.of(context).size.width - 16) / 3;
    final expense = cashService.expenseCount(widget.transactionsFuture);
    final income = cashService.incomeCount(widget.transactionsFuture);
    final total = income - expense;
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
                    category: 'Expense',
                    cash: expense.toStringAsFixed(2),
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: categoryWidth,
                  child: CategoriesWidgets(
                    category: 'Income',
                    cash: income.toStringAsFixed(2),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: categoryWidth,
                  child: CategoriesWidgets(
                    category: 'Balance',
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
