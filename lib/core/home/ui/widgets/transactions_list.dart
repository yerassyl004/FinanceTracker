import 'package:finance_app/core/home/models/account.dart';
import 'package:finance_app/core/home/models/type_spending.dart';
import 'package:finance_app/core/home/models/category.dart';
import 'package:finance_app/core/home/models/transaction.dart';
import 'package:finance_app/core/home/ui/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions = <Transaction>[
    Transaction(
      cash: 5000,
      date: DateTime.now(),
      category: const Category(
        title: 'Food',
        icon: 'food'
      ),
      typeSpending: TypeSpending.expense,
      account: Account(
        cash: 5000,
        icon: 'card',
        title: 'Card'
      ),
    ),
    Transaction(
      cash: 5000,
      date: DateTime.now(),
      category: const Category(
        title: 'Food',
        icon: 'food'
      ),
      typeSpending: TypeSpending.expense,
      account: Account(
        cash: 5000,
        icon: 'card',
        title: 'Card'
      ),
    ),
    Transaction(
      cash: 5000,
      date: DateTime.now(),
      category: const Category(
        title: 'Food',
        icon: 'food'
      ),
      typeSpending: TypeSpending.expense,
      account: Account(
        cash: 5000,
        icon: 'card',
        title: 'Card'
      ),
    ),
  ];

  TransactionsList({super.key});

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
