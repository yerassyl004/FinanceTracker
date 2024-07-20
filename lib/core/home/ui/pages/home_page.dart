import 'dart:convert';

import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:finance_app/core/home/ui/widgets/transactions_list.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Transaction>> _transactionsFuture;

  @override
  void initState() {
    super.initState();
    _transactionsFuture = _loadTransactions();
  }

  Future<List<Transaction>> _loadTransactions() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList = prefs.getStringList('transactions') ?? [];
    return transactionList.map((jsonString) => Transaction.fromJson(jsonDecode(jsonString))).toList();
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
              const HeaderWidget(),
              Expanded(
                child: FutureBuilder<List<Transaction>>(
                  future: _transactionsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (snapshot.hasData) {
                      return TransactionsList(transactions: snapshot.data!);
                    } else {
                      return Center(child: Text('No transactions found.'));
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
                    _transactionsFuture = _loadTransactions(); // Refresh transactions list
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
