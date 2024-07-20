import 'package:finance_app/core/accounts/ui/pages/accounts_page.dart';
import 'package:finance_app/core/add_transaction/ui/widget/input_textField_widget.dart';
import 'package:finance_app/core/add_transaction/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/core/add_transaction/ui/widget/types_spending_widget.dart';
import 'package:finance_app/core/categories/ui/pages/categories_page.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:finance_app/core/models/modalType.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddTransactionPage extends StatefulWidget {
  AddTransactionPage({super.key});

  TypeSpending selectedType = TypeSpending.expense;

  @override
  _AddTransactionPageState createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  Category? selectedCategory;
  Account? selectedAccount;
  Account? receiverAccount;

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

  void _selectTransferInfo(Modaltype type) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        builder: (BuildContext context) {
          return ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
            child: modalType(type),
          );
        });
  }

  Widget modalType(Modaltype type) {
    switch (type) {
      case Modaltype.selectedAccount:
      return AccountsPage(onTapAccount: _setAccountData);
      case Modaltype.category:
      return CategoriesPage(onCategorySelected: _setCategoryData);
      case Modaltype.receiverAccount:
      return AccountsPage(onTapAccount: _setReceiverAccountData);
    }
  }

  void _setCategoryData(Category category) {
    setState(() {
      selectedCategory = category;
    });
    Navigator.pop(context);
  }

  void _setAccountData(Account account) {
    setState(() {
      selectedAccount = account;
    });
    Navigator.pop(context);
  }

  void _setReceiverAccountData(Account account) {
    setState(() {
      receiverAccount = account;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    String? categoryIcon = selectedCategory?.icon;
    String? categoryTitle = selectedCategory?.title;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New transaction',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
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
                        isSelected:
                            widget.selectedType == TypeSpending.transfer,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TransferInfoWidget(
                            image: selectedAccount?.icon ?? 'card',
                            title: selectedAccount?.title ?? 'Account',
                            onTap: () {
                              _selectTransferInfo(Modaltype.selectedAccount);
                            }),
                      ),
                      const SizedBox(width: 8),
                      widget.selectedType == TypeSpending.transfer ?
                      Expanded(
                          child: TransferInfoWidget(
                              image: receiverAccount?.icon ?? 'card',
                              title: receiverAccount?.title ?? 'Account',
                              onTap: () {
                              _selectTransferInfo(Modaltype.receiverAccount);
                            })) :
                      Expanded(
                          child: TransferInfoWidget(
                              image: categoryIcon ?? 'food',
                              title: categoryTitle ?? 'Category',
                              onTap: () {
                              _selectTransferInfo(Modaltype.category);
                            }))
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Jul 19, 2024',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.grey,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        const Text(
                          '2:29 PM',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
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
