import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/presentation/home/ui/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Add this for date formatting

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;
  final ScrollController scrollController;
  final VoidCallback updateList;

  const TransactionsList({
    super.key,
    required this.transactions,
    required this.scrollController,
    required this.updateList
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [];
    String? lastDate;

    for (var transaction in transactions) {
      final transactionDate = '${DateFormat('MMMM d').format(transaction.date)}, ${DateFormat('EEEE').format(transaction.date)}';
      if (transactionDate != lastDate) {
        lastDate = transactionDate;
        items.add(
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Divider(
                      height: 3,
                      color: Color.fromRGBO(156, 182, 201, 1),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    transactionDate,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(156, 182, 201, 1),
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Divider(
                      color: Color.fromRGBO(156, 182, 201, 1),
                      height: 4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      items.add(TransactionWidget(transaction: transaction, updateList: updateList));
    }

    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.zero,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}
