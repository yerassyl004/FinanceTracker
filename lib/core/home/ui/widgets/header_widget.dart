import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:finance_app/core/home/ui/widgets/categories_widgets.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderWidget extends StatelessWidget {
  // final double count;
  final Future<List<Transaction>> transactionsFuture;
  HeaderWidget({super.key, required this.transactionsFuture});

  CountCashService cashService = CountCashService();

  Future<Map<String, double>> _loadCounts() async {
    final expense = await cashService.expenseCount(transactionsFuture);
    final income = await cashService.incomeCount(transactionsFuture);
    return {
      'expense': expense,
      'income': income,
      'total': income - expense
    };
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
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
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.menu)
              // ),
              // const SizedBox(width: 24),
              const Text(
                'Finance Tracker',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              // const Spacer(),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.search)
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios)
              ),
              const Text(
                'July, 2024',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios)
              )
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
                      CategoriesWidgets(category: 'Expense', cash: counts['expense']!.toStringAsFixed(2), color: Colors.red),
                      CategoriesWidgets(category: 'Income', cash: counts['income']!.toStringAsFixed(2), color: Colors.green),
                      CategoriesWidgets(category: 'Total', cash: counts['total']!.toStringAsFixed(2), color: Colors.blue),
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
