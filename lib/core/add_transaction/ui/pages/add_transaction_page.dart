import 'package:finance_app/core/accounts_modal/ui/pages/accounts_modal.dart';
import 'package:finance_app/core/add_transaction/service/transaction_save.dart';
import 'package:finance_app/core/add_transaction/service/transactions_service.dart';
import 'package:finance_app/core/add_transaction/ui/widget/input_textField_widget.dart';
import 'package:finance_app/core/add_transaction/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/core/add_transaction/ui/widget/types_spending_widget.dart';
import 'package:finance_app/core/categories/ui/pages/categories_page.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:finance_app/core/models/modalType.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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

  void _saveTransaction() async {
    // Check required fields based on TypeSpending
    if (_amountController.text.isEmpty ||
        selectedAccount == null ||
        (widget.selectedType == TypeSpending.transfer &&
            receiverAccount == null) ||
        (widget.selectedType != TypeSpending.transfer &&
            selectedCategory == null)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all required fields.')),
      );
      return;
    }

    final double cash;
    try {
      cash = double.parse(_amountController.text);
      _transactionService(widget.selectedType, cash);
      _addTransaction(cash);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid amount entered.')),
      );
      return;
    }
    Navigator.pop(context, true);
  }

  void _addTransaction(double cash) {
    final transactionsService = TransactionSave();
    final transaction = Transaction(
      cash: cash,
      date: DateTime.now(),
      note: _notesController.text,
      account: selectedAccount!,
      category: widget.selectedType == TypeSpending.transfer
          ? null
          : selectedCategory,
      typeSpending: widget.selectedType,
      destination:
          widget.selectedType == TypeSpending.transfer ? receiverAccount : null,
    );
    transactionsService.saveTransaction(transaction);
  }

  void _transactionService(TypeSpending typeSpending, double cash) {
    final transactionsService = TransactionsService();
    switch (typeSpending) {
      case TypeSpending.transfer:
        transactionsService.transferTransaction(
            selectedAccount!, receiverAccount!, cash);
      case TypeSpending.expense:
        transactionsService.expenseTransaction(selectedAccount!, cash);
      case TypeSpending.income:
        transactionsService.incomeTransaction(selectedAccount!, cash);
    }
  }

  String _setTypeSpending(TypeSpending typeSpending) {
    switch (typeSpending) {
      case TypeSpending.expense:
        return 'Expense';
      case TypeSpending.income:
        return 'Income';
      case TypeSpending.transfer:
        return 'Transfer';
    }
  }

  void _typeSpendingChange(TypeSpending typeSpending) {
    selectedAccount = null;
    selectedCategory = null;
    receiverAccount = null;
    _amountController.text = '';
    _notesController.text = '';
    setState(() {
      widget.selectedType = typeSpending;
    });
  }

  void _selectTransferInfo(Modaltype type) {
    showBarModalBottomSheet(
      expand: false,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => modalType(type),
    );
  }

  Widget modalType(Modaltype type) {
    switch (type) {
      case Modaltype.selectedAccount:
        return AddAccountsPage(onTapAccount: _setAccountData);
      case Modaltype.category:
        if (widget.selectedType == TypeSpending.income) {
          return CategoriesPage(
              onCategorySelected: _setCategoryData, isExpense: false);
        }
        return CategoriesPage(
            onCategorySelected: _setCategoryData, isExpense: true);
      case Modaltype.receiverAccount:
        return AddAccountsPage(onTapAccount: _setReceiverAccountData);
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Transaction',
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
                        onTap: () => _typeSpendingChange(TypeSpending.transfer),
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
                        onTap: () => _typeSpendingChange(TypeSpending.expense),
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
                        onTap: () => _typeSpendingChange(TypeSpending.income),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TransferInfoWidget(
                          image: selectedAccount?.icon ?? 'wallet_icon',
                          title: selectedAccount?.title ?? 'Account',
                          onTap: () =>
                              _selectTransferInfo(Modaltype.selectedAccount),
                          isSelected: selectedAccount != null,
                        ),
                      ),
                      const SizedBox(width: 8),
                      widget.selectedType == TypeSpending.transfer
                          ? Expanded(
                              child: TransferInfoWidget(
                                image: receiverAccount?.icon ?? 'wallet_icon',
                                title: receiverAccount?.title ?? 'Account',
                                onTap: () => _selectTransferInfo(
                                    Modaltype.receiverAccount),
                                isSelected: receiverAccount != null,
                              ),
                            )
                          : Expanded(
                              child: TransferInfoWidget(
                                image:
                                    selectedCategory?.icon ?? 'category_icon',
                                title: selectedCategory?.title ?? 'Category',
                                onTap: () =>
                                    _selectTransferInfo(Modaltype.category),
                                isSelected: selectedCategory != null,
                              ),
                            ),
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
                      Text(
                        DateFormat('MMM d, EEEE').format(DateTime.now()),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.grey,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      Text(
                        DateFormat('h:mm a').format(DateTime.now()),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
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
