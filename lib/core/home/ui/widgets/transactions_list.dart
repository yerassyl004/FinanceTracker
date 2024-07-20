import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/home/ui/widgets/transaction_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionsList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionWidget(transaction: transactions[index]);
      },
    );
  }
}
