import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:finance_app/presentation/transaction_info/ui/page/tansaction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCategoryWidget extends StatelessWidget {
  final Transaction transaction;
  final VoidCallback updateList;
  const TransactionCategoryWidget(
      {super.key, required this.transaction, required this.updateList});

  void _handleTransactionTap(BuildContext context, Transaction transaction) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: true,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: TansactionPage(
            args: TansactionInfoArgument(transaction: transaction),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String? categoryIcon = transaction.category?.icon;
    String? accountIcon = transaction.account?.icon;
    String? categoryTitle = transaction.category?.title;
    String? accountTitle = transaction.account?.title;
    String? distanationTitle = transaction.destination?.title;
    String? distanationIcon = transaction.destination?.icon;
    String cash = transaction.cash.toString();
    TypeSpending typeSpending = transaction.typeSpending;

    return GestureDetector(
      onTap: () => _handleTransactionTap(context, transaction),
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/images/${categoryIcon ?? 'transfer_icon'}.png',
                  height: 40.h,
                ),
                8.pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      categoryTitle ?? AppStrings.transfer,
                      style: AppTextStyle.body16Medium()
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/$accountIcon.png',
                          width: 25.w,
                        ),
                        5.pw,
                        Text(
                          accountTitle ?? '',
                          style: AppTextStyle.body14Medium().copyWith(color: Colors.grey),
                        ),
                        typeSpending == TypeSpending.transfer
                            ? Row(children: [
                                const Icon(
                                  Icons.arrow_right,
                                  color: Colors.grey,
                                ),
                                Image.asset(
                                  'assets/images/$distanationIcon.png',
                                  height: 25.h,
                                ),
                                5.pw,
                                Text(
                                  distanationTitle ?? '',
                                  style: AppTextStyle.body14Medium().copyWith(color: Colors.grey),
                                ),
                              ])
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                CashTransactionWidget(
                    typeSpending: typeSpending, cash: cash, font: 16.sp)
              ]),
              8.ph,
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Divider(
                  height: 2,
                  color: Color.fromRGBO(156, 182, 201, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
