import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:finance_app/core/home/ui/widgets/transactions_list.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Transaction>> _transactionsFuture;
  CountCashService cashService = CountCashService();
  var selectedMonth = DateTime.now();

  @override
  void initState() {
    super.initState();
    _transactionsFuture = cashService.loadTransactions(selectedMonth);
  }

  void _handleDateChanged(DateTime newDate) {
    selectedMonth = newDate;
    setState(() {
      _transactionsFuture = cashService.loadTransactions(newDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWidget(transactionsFuture: _transactionsFuture, onDateChanged: _handleDateChanged),
              const SizedBox(height: 16),
              Expanded(
                child: FutureBuilder<List<Transaction>>(
                  future: _transactionsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (snapshot.hasData) {
                      return TransactionsList(transactions: snapshot.data!);
                    } else {
                      return const Center(child: Text('No transactions found.'));
                    }
                  },
                ),
              ),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              backgroundColor: Colors.grey.shade300,
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTransactionPage()),
                );

                if (result == true) {
                  setState(() {
                    _transactionsFuture = cashService.loadTransactions(selectedMonth); // Refresh transactions list
                  });
                }
              },
              child: const Icon(CupertinoIcons.add),
            ),
          ),
        ],
      ),
    );
  }
}
