import 'package:finance_app/core/home/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionWidget({
    super.key,
    required this.transaction
    });

  @override
  Widget build(BuildContext context) {
    String categoryIcon = transaction.category.icon;
    String accountIcon = transaction.account.icon;
    String categoryTitle = transaction.category.title;
    String accountTitle = transaction.account.title;
    String cash = transaction.cash.toString();
 
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/$categoryIcon.png',
                height: 50,
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    categoryTitle,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/$accountIcon.png',
                        height: 30,
                      ),
                      Text(
                        accountTitle
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Text(
                cash
              )
            ]
          ),
          const SizedBox(height: 4),
          const Divider(
            height: 2,
            color: Colors.black
          ),
        ],
      ),
    );
  }
}