import 'package:finance_app/core/transaction_category_list/ui/page/transactions_category.dart';
import 'package:finance_app/core/models/analysis.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class TransactionAnalysWidget extends StatelessWidget {
  final Analysis analysis;
  const TransactionAnalysWidget({super.key, required this.analysis});

  void _handleTransactionTap(BuildContext context, Category category) {
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
          child: TransactionsCategory(category: category),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String categoryIcon = analysis.category.icon;
    String categoryTitle = analysis.category.title;

    return GestureDetector(
      onTap: () => _handleTransactionTap(context, analysis.category),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
        child: Container(
          color: Colors.transparent,
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '₸${analysis.cash.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    )
                ],
              ),
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
