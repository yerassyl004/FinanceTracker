import 'package:finance_app/core/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderDetailWidget extends StatelessWidget {
  final Transaction transaction;
  const HeaderDetailWidget({super.key, required this.transaction});

  String _setTypeSpending(TypeSpending typeSpending) {
    switch (typeSpending) {
      case TypeSpending.expense:
        return 'Expense';
      case TypeSpending.income:
        return 'Income';
      case TypeSpending.transfer:
        return 'Transfer';
    }
  }

  @override
  Widget build(BuildContext context) {
    String? icon = transaction.typeSpending == TypeSpending.transfer
        ? 'transfer_icon'
        : transaction.category?.icon;
    String? title = transaction.typeSpending == TypeSpending.transfer
        ? 'Transfer'
        : transaction.category?.title;
    String date = DateFormat('dd/MM/yyyy hh:mm').format(transaction.date);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //  _setTypeSpending(transaction.typeSpending),
        //   style: const TextStyle(
        //     fontSize: 26,
        //     fontWeight: FontWeight.w600,
        //     color: Colors.black
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon != null
                ? Image.asset(
                    'assets/images/$icon.png',
                    height: 55,
                  )
                : const SizedBox(),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
                Text(
                  date,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        Center(
          child: CashTransactionWidget(typeSpending: transaction.typeSpending, cash: transaction.cash.toString(), font: 28)
        ),
      ],
    );
  }
}
