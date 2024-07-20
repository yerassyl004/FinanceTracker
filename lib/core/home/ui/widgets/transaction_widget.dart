import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:finance_app/core/home/ui/widgets/cash_transaction_widget.dart';
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
    String? distanationTitle = transaction.destination?.title;
    String? distanationIcon = transaction.destination?.icon;
    String cash = transaction.cash.toString();
    TypeSpending typeSpending = transaction.typeSpending;
 
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    categoryTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/$accountIcon.png',
                        width: 25,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        accountTitle
                      ),
                      typeSpending == TypeSpending.transfer ?
                      Row(
                        children: [
                          const Icon(Icons.arrow_right),
                          Image.asset(
                            'assets/images/$distanationIcon.png',
                          height: 30,
                          ),
                          Text(
                            distanationTitle ?? ''
                          ),
                        ]
                      ) : 
                      const SizedBox(),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              CashTransactionWidget(typeSpending: typeSpending, cash: cash)
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