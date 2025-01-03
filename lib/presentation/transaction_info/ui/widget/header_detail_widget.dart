import 'dart:io';
import 'package:finance_app/presentation/create_transaction/ui/pages/new_create_transactions_page.dart';
import 'package:finance_app/presentation/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/routes_manager.dart';
import 'package:finance_app/presentation/transaction_info/service/transaction_info_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderDetailWidget extends StatelessWidget {
  final Transaction transaction;
  final VoidCallback updateList;
  const HeaderDetailWidget(
      {super.key, required this.transaction, required this.updateList});

  void _confirmDelete(BuildContext context, TransactionInfoService service) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('Confirm Delete'),
            content:
                const Text('Are you sure you want to delete this transaction?'),
            actions: <Widget>[
              CupertinoDialogAction(
                textStyle: const TextStyle(color: Colors.blueAccent),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('Cancel'),
              ),
              CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () {
                  service.deleteTransaction(transaction);
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.of(context)
                      .pop(true); // Pop the page and return true
                  updateList();
                },
                child: const Text('Delete'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirm Delete'),
            content:
                const Text('Are you sure you want to delete this transaction?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  service.deleteTransaction(transaction);
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.of(context)
                      .pop(true); // Pop the page and return true
                },
                child: const Text('Delete'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    TransactionInfoService service = TransactionInfoService();
    String? icon = transaction.typeSpending == TypeSpending.transfer
        ? 'transfer_icon'
        : transaction.category?.icon;
    String? title = transaction.typeSpending == TypeSpending.transfer
        ? 'Transfer'
        : transaction.category?.title;
    String date = DateFormat('dd/MM/yyyy HH:mm').format(transaction.date);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon != null
                ? Image.asset(
                    'assets/images/$icon.png',
                    height: 50,
                    width: 50,
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
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                _confirmDelete(context, service);
              },
              icon: const Icon(CupertinoIcons.trash),
            ),
            IconButton(
              onPressed: () async {
                Navigator.pop(context);
                final result = await Navigator.pushNamed(
                  context,
                  Routes.createTransactionPage,
                  arguments: CreateTransactionsArgument(transaction),
                );
                if (result == true) {
                  updateList();
                }
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Center(
          child: CashTransactionWidget(
              typeSpending: transaction.typeSpending,
              cash: transaction.cash.toString(),
              font: 28),
        ),
      ],
    );
  }
}
