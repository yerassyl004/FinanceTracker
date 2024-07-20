import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/home/ui/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TransactionsList extends StatefulWidget {
  const TransactionsList({super.key});

  @override
  _TransactionsListState createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  List<Transaction> transactions = [];

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  Future<void> _loadTransactions() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList = prefs.getStringList('transactions') ?? [];

    setState(() {
      transactions = transactionList.map((jsonString) => Transaction.fromJson(jsonDecode(jsonString))).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionWidget(transaction: transactions[index]);
      },
    );
  }
}
