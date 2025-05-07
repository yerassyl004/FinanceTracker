import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/app_router.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/create_transaction/ui/pages/new_create_transactions_page.dart';
import 'package:finance_app/presentation/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HeaderDetailWidget extends StatelessWidget {
  final Transaction transaction;
  final VoidCallback onDelete;
  const HeaderDetailWidget(
      {super.key, required this.transaction, required this.onDelete});

  void _confirmDelete(BuildContext context) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(AppStrings.confirmDelete),
            content: Text(AppStrings.deleteSubTitle),
            actions: <Widget>[
              CupertinoDialogAction(
                textStyle: const TextStyle(color: Colors.blueAccent),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppStrings.cancel),
              ),
              CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () {
                  onDelete();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(true);
                },
                child: Text(AppStrings.delete),
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
            title: Text(AppStrings.confirmDelete),
            content: Text(AppStrings.deleteSubTitle),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppStrings.cancel),
              ),
              TextButton(
                onPressed: () {
                  onDelete();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(true);
                },
                child: Text(AppStrings.delete),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String? icon = transaction.typeSpending == TypeSpending.transfer
        ? 'transfer_icon'
        : transaction.category?.icon;
    String? title = transaction.typeSpending == TypeSpending.transfer
        ? AppStrings.transfer
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
                    height: 50.h,
                    width: 50.w,
                  )
                : SizedBox(),
            16.pw,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: AppTextStyle.body22Medium(),
                  textAlign: TextAlign.start,
                ),
                Text(date, style: AppTextStyle.body14Medium()),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                _confirmDelete(context);
              },
              icon: Icon(CupertinoIcons.trash),
            ),
            IconButton(
              onPressed: () async {
                final result = await context.pushRoute(
                    NewCreateTransactionsRoute(
                        args: CreateTransactionsArgument(transaction)));
                if (context.mounted && result == true) {
                  context.pop();
                }
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        16.ph,
        Center(
          child: CashTransactionWidget(
              typeSpending: transaction.typeSpending,
              cash: transaction.cash.toString(),
              font: 28.sp),
        ),
      ],
    );
  }
}
