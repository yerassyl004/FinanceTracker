import 'package:finance_app/core/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:finance_app/core/transaction_info/ui/page/tansaction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionCategoryWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionCategoryWidget({super.key, required this.transaction});

  void _handleTransactionTap(BuildContext context, Transaction transaction) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: true,
      useRootNavigator: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: TansactionPage(transaction: transaction, updateList: () {  },),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String? categoryIcon = transaction.category?.icon;
    String accountIcon = transaction.account.icon;
    String? categoryTitle = transaction.category?.title;
    String accountTitle = transaction.account.title;
    String? distanationTitle = transaction.destination?.title;
    String? distanationIcon = transaction.destination?.icon;
    String cash = transaction.cash.toString();
    TypeSpending typeSpending = transaction.typeSpending;
 
    return GestureDetector(
      onTap: () => _handleTransactionTap(context, transaction),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/${categoryIcon ?? 'transfer_icon'}.png',
                    height: 40,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        categoryTitle ?? 'Transfer',
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
                            accountTitle,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          typeSpending == TypeSpending.transfer ?
                          Row(
                            children: [
                              const Icon(Icons.arrow_right, color: Colors.grey,),
                              Image.asset(
                                'assets/images/$distanationIcon.png',
                              height: 25,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                distanationTitle ?? '',
                                style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                              ),
                            ]
                          ) : 
                          const SizedBox(),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  CashTransactionWidget(typeSpending: typeSpending, cash: cash, font: 16)
                ]
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.only(left: 50),
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