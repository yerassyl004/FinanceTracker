import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:finance_app/presentation/accounts_modal/ui/pages/accounts_modal.dart';
import 'package:finance_app/presentation/create_transaction/service/transaction_save.dart';
import 'package:finance_app/presentation/create_transaction/service/transactions_service.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/input_textField_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/types_spending_widget.dart';
import 'package:finance_app/presentation/categories/ui/pages/categories_page.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/data/models/category.dart';
import 'package:finance_app/data/models/modalType.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';

// ignore: must_be_immutable
class AddTransactionPage extends StatefulWidget {
  Transaction? transaction;
  AddTransactionPage({super.key, this.transaction});

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
  final FocusNode _amountFocusNode = FocusNode();
  final FocusNode _notesFocusNode = FocusNode();

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    _amountFocusNode.dispose();
    _notesFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    widget.selectedType =
        widget.transaction?.typeSpending ?? TypeSpending.expense;
    selectedAccount = widget.transaction?.account;
    receiverAccount = widget.transaction?.destination;
    selectedCategory = widget.transaction?.category;
    _amountController.text = widget.transaction?.cash.toStringAsFixed(2) ?? '';
    _notesController.text = widget.transaction?.note ?? '';
  }

  void _saveTransaction() async {
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
      if (widget.transaction == null) {
        _addTransaction(cash);
      } else {
        _updateTransaction(cash);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid amount entered.')),
      );
      return;
    }
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
    Navigator.pop(context, true);
  }

  void _updateTransaction(double cash) {
    final transactionsService = TransactionSave();
    widget.transaction?.cash = cash;
    widget.transaction?.note = _notesController.text;
    widget.transaction?.account = selectedAccount!;
    widget.transaction?.category =
        widget.selectedType == TypeSpending.transfer ? null : selectedCategory;
    widget.transaction?.typeSpending = widget.selectedType;
    widget.transaction?.destination =
        widget.selectedType == TypeSpending.transfer ? receiverAccount : null;

    transactionsService.updateTransactions(widget.transaction!);
    Navigator.pop(context, true);
  }

  void _transactionService(TypeSpending typeSpending, double cash) {
    final transactionsService = TransactionsService();
    switch (typeSpending) {
      case TypeSpending.transfer:
        transactionsService.transferTransaction(
            selectedAccount!, receiverAccount!, cash);
        break;
      case TypeSpending.expense:
        transactionsService.expenseTransaction(selectedAccount!, cash);
        break;
      case TypeSpending.income:
        transactionsService.incomeTransaction(selectedAccount!, cash);
        break;
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
    widget.transaction = null;
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
    // switch (type) {
    //   case Modaltype.selectedAccount:
    //     return AddAccountsPage(onTapAccount: _setAccountData, accountList: [],);
    //   case Modaltype.category:
    //     if (widget.selectedType == TypeSpending.income) {
          return SizedBox();
    //     }
    //     return CategoriesPage(
    //         onCategorySelected: _setCategoryData, isExpense: true);
    //   case Modaltype.receiverAccount:
    //     return AddAccountsPage(onTapAccount: _setReceiverAccountData, accountList: [],);
    // }
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
    // print(widget.transaction);
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
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
                            onTap: () =>
                                _typeSpendingChange(TypeSpending.transfer),
                          ),
                          Container(
                            width: 1,
                            height: 20,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 16.0),
                          ),
                          TypesSpendingWidget(
                            title: _setTypeSpending(TypeSpending.expense),
                            isSelected:
                                widget.selectedType == TypeSpending.expense,
                            onTap: () =>
                                _typeSpendingChange(TypeSpending.expense),
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
                        // focusNode: _amountFocusNode,
                      ),
                      const SizedBox(height: 12),
                      InputTextfieldWidget(
                        hintText: 'Add notes',
                        inputType: TextInputType.text,
                        maxLine: 3,
                        minLine: 2,
                        controller: _notesController,
                        // focusNode: _notesFocusNode,
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
                      const SizedBox(height: 62)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
          child: FloatingActionButton.extended(
            onPressed: _saveTransaction,
            backgroundColor: Colors.blueAccent,
            label: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
