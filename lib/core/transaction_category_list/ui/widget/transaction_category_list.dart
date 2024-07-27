import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/transaction_category_list/ui/widget/transaction_category_widget.dart';
import 'package:flutter/cupertino.dart';

class TransactionCategoryList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionCategoryList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionCategoryWidget(transaction: transactions[index]);
      },
    );
  }
}