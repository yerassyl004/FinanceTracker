import 'package:finance_app/core/add_transation/ui/widget/input_textField_widget.dart';
import 'package:finance_app/core/add_transation/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/core/add_transation/ui/widget/types_spending_widget.dart';
import 'package:finance_app/core/home/models/type_spending.dart';
import 'package:flutter/material.dart';

class AddTransactionPage extends StatefulWidget {
  AddTransactionPage({super.key});

  TypeSpending selectedType = TypeSpending.expense;

  @override
  _AddTransactionPageState createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _saveTransaction() {
    final String amount = _amountController.text;
    final String notes = _notesController.text;

    print('Amount: $amount, Notes: $notes');
  }

  String _setTypeSpending(TypeSpending type_spending) {
    switch (type_spending) {
      case TypeSpending.expense:
      return 'Expanse';
      case TypeSpending.income:
      return 'Income';
      case TypeSpending.transfer:
      return 'Transfer';
    }
  }

  void _typeSpendingChange(TypeSpending type_spending) {
    setState(() {
      widget.selectedType = type_spending;
    });
  }

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
                      TypesSpendingWidget(
                          title: _setTypeSpending(TypeSpending.transfer), 
                          isSelected: widget.selectedType == TypeSpending.transfer, 
                          onTap: () {
                          _typeSpendingChange(TypeSpending.transfer);
                          },
                        ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.grey,
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      TypesSpendingWidget(
                        title: _setTypeSpending(TypeSpending.expense), 
                        isSelected: widget.selectedType == TypeSpending.expense, 
                        onTap: () {
                          _typeSpendingChange(TypeSpending.expense);
                          },
                        ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.grey,
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      TypesSpendingWidget(
                        title: _setTypeSpending(TypeSpending.income), 
                        isSelected: widget.selectedType == TypeSpending.income, 
                        onTap: () {
                          _typeSpendingChange(TypeSpending.income);
                          },
                        ),
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
                  InputTextfieldWidget(
                    hintText: '0',
                    inputType: TextInputType.number,
                    maxLine: 1,
                    minLine: 1,
                    controller: _amountController,
                  ),
                  const SizedBox(height: 12),
                  InputTextfieldWidget(
                    hintText: 'Add notes',
                    inputType: TextInputType.text,
                    maxLine: 3,
                    minLine: 2,
                    controller: _notesController,
                  ),
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
              left: 16,
              right: 16,
              bottom: 8,
              height: 48,
              child: FloatingActionButton(
                onPressed: _saveTransaction,
                backgroundColor: Colors.blueAccent,
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
