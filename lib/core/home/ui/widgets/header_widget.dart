import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:finance_app/core/home/ui/widgets/categories_widgets.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderWidget extends StatefulWidget {
  final Future<List<Transaction>> transactionsFuture;
  final Function(DateTime) onDateChanged;

  const HeaderWidget({
    super.key,
    required this.transactionsFuture,
    required this.onDateChanged,
  });

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late DateTime _currentDate;
  CountCashService cashService = CountCashService();

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  Future<Map<String, double>> _loadCounts() async {
    final expense = await cashService.expenseCount(widget.transactionsFuture);
    final income = await cashService.incomeCount(widget.transactionsFuture);
    return {
      'expense': expense,
      'income': income,
      'total': income - expense
    };
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Finance Tracker',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: _previousMonth,
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Text(
                monthYear,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FutureBuilder<Map<String, double>>(
              future: _loadCounts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  final counts = snapshot.data!;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoriesWidgets(
                        category: 'Expense',
                        cash: counts['expense']!.toStringAsFixed(2),
                        color: Colors.orange,
                      ),
                      CategoriesWidgets(
                        category: 'Income',
                        cash: counts['income']!.toStringAsFixed(2),
                        color: Colors.green,
                      ),
                      CategoriesWidgets(
                        category: 'Total',
                        cash: counts['total']!.toStringAsFixed(2),
                        color: counts['total']! > 0 ?Colors.blue : Colors.red,
                      ),
                    ],
                  );
                } else {
                  return const Text('No transactions found.');
                }
              },
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
