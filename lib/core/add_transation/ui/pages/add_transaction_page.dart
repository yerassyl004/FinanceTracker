import 'package:finance_app/core/add_transation/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/core/add_transation/ui/widget/types_spending_widget.dart';
import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypesSpendingWidget(title: 'Transfer', isSelected: false),
                SizedBox(width: 16),
                TypesSpendingWidget(title: 'Expense', isSelected: true),
                SizedBox(width: 16),
                TypesSpendingWidget(title: 'Income', isSelected: false),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TransferInfoWidget(
                    image: 'card', 
                    title: 'Account'
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TransferInfoWidget(
                    image: 'food',
                    title: 'Category'
                  )
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Add notes',
              )
            )
          ]
        ),
      ),
    );
  }
}