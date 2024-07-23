import 'package:finance_app/core/analysis/service/analys_service.dart';
import 'package:finance_app/core/home/ui/widgets/cash_transaction_widget.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:finance_app/core/transaction_info/ui/page/tansaction_page.dart';
import 'package:flutter/material.dart';

class TransactionAnalysWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionAnalysWidget({super.key, required this.transaction});

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
          child: TansactionPage(transaction: transaction),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String categoryIcon = transaction.category?.icon ?? 'transfer_icon';
    String accountIcon = transaction.account.icon;
    String categoryTitle = transaction.category?.title ?? 'Transfer';
    TypeSpending typeSpending = transaction.typeSpending;
    AnalysService analysService = AnalysService();

    return GestureDetector(
      onTap: () => _handleTransactionTap(context, transaction),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(children: [
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
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/$accountIcon.png',
                          width: 25,
                        ),
                        const SizedBox(width: 5),
                        CashTransactionWidget(typeSpending: typeSpending, cash: transaction.cash.toStringAsFixed(2), font: 16)
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                FutureBuilder<double>(
                    future: analysService.getPercentItem(transaction),
                    builder:
                        (BuildContext context, AsyncSnapshot<double> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        return Column(
                          children: [
                            Text('${snapshot.data?.toStringAsFixed(2)}%'),
                            const SizedBox(height: 4),
                             SizedBox(
                              width: 100,
                              height: 10,
                              child: LinearProgressIndicator(
                                borderRadius: BorderRadius.circular(5),
                                value: snapshot.data! / 100,
                                backgroundColor: Colors.grey[300],
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.orange),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Text('No data');
                      }
                    })
              ]),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.only(left: 60),
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
