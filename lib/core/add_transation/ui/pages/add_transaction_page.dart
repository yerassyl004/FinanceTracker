import 'package:finance_app/core/add_transation/ui/widget/input_textField_widget.dart';
import 'package:finance_app/core/add_transation/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/core/add_transation/ui/widget/types_spending_widget.dart';
import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TypesSpendingWidget(
                        title: 'Transfer', isSelected: false),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    const TypesSpendingWidget(title: 'Expense', isSelected: true),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    const TypesSpendingWidget(title: 'Income', isSelected: false),
                  ],
                ),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TransferInfoWidget(image: 'card', title: 'Account'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                        child:
                            TransferInfoWidget(image: 'food', title: 'Category')),
                  ],
                ),
                const SizedBox(height: 16),
                const InputTextfieldWidget(
                    hintText: '0',
                    inputType: TextInputType.number,
                    maxLine: 1,
                    minLine: 1),
                const SizedBox(height: 12),
                const InputTextfieldWidget(
                    hintText: 'Add notes',
                    inputType: TextInputType.text,
                    maxLine: 3,
                    minLine: 2),
                const SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  const Text(
                    'Jul 19, 2024',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.grey,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  const Text(
                    '2:29 PM',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ])
              ],
            ),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 8,
            height: 48,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.blueAccent,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          )
        ]
        ),
      ),
    );
  }
}
