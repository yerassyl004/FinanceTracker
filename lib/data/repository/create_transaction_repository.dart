import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:flutter/widgets.dart';

abstract class CreateTransactionRepositoryImplementation {
  Future<void> createTransaction(Transaction transaction);
  Future<List<Category>> loadExpenseCategoryData();
  Future<List<Category>> loadIncomeCategoryData();
  Future<List<Account>> loadAccountData();
}

class CreateTransactionRepository implements CreateTransactionRepositoryImplementation {
  final TransactionDao _transactionDao = TransactionDao();
  final AccountDao _accountDao = AccountDao();
  final CategoryDao _categoryDao = CategoryDao();

  Future<void> saveTransaction(Transaction transaction) async {
    if (transaction.typeSpending == TypeSpending.transfer) {
      _accountDao.transferMoney(transaction.account!.id, transaction.destination!.id, transaction.cash);
    } else if (transaction.typeSpending == TypeSpending.expense) {
      _accountDao.updateAccount(transaction.account!.copyWith(cash: transaction.account!.cash - transaction.cash));
    } else {
      _accountDao.updateAccount(transaction.account!.copyWith(cash: transaction.account!.cash + transaction.cash));
    }
    await _transactionDao.insertTransaction(transaction);

    debugPrint('Transaction saved: ${transaction.toJson()}');
  }

  Future<void> updateTransactions(
      Transaction newTransaction, Transaction oldTransaction) async {
    switch (newTransaction.typeSpending) {
      case TypeSpending.expense:
        updateAccount(
          newTransaction.account!.copyWith(
            cash: newTransaction.account!.cash +
                oldTransaction.cash -
                newTransaction.cash,
          ),
        );
        break;

      case TypeSpending.income:
        updateAccount(
          newTransaction.account!.copyWith(
            cash: newTransaction.account!.cash -
                oldTransaction.cash +
                newTransaction.cash,
          ),
        );
        break;

      case TypeSpending.transfer:
        final cashDifference = newTransaction.cash - oldTransaction.cash;
        transferTransaction(
          newTransaction.account!,
          newTransaction.destination!,
          cashDifference,
        );
        break;
    }

    await _transactionDao.updateTransaction(newTransaction);
  }

  Future<void> updateAccount(Account selectedAccount) async {
    await _accountDao.updateAccount(selectedAccount);
  }

  Future<void> transferTransaction(
      Account selectedAccount, Account receiverAccount, double cash) async {
    if (cash <= 0) {
      throw ArgumentError("Cash to transfer must be greater than 0.");
    }
    if (selectedAccount.cash < cash) {
      throw Exception("Insufficient balance in the sender's account.");
    }

    // Deduct cash from sender's account
    final updatedSenderAccount =
        selectedAccount.copyWith(cash: selectedAccount.cash - cash);

    // Add cash to receiver's account
    final updatedReceiverAccount =
        receiverAccount.copyWith(cash: receiverAccount.cash + cash);

    // Update both accounts in the database
    await _accountDao.updateAccount(updatedSenderAccount);
    await _accountDao.updateAccount(updatedReceiverAccount);

    debugPrint(
        'Transfer successful: $cash from ${selectedAccount.id} to ${receiverAccount.id}');
  }

  Future<List<Account>> loadAccountData() async {
    final accounts = await _accountDao.getAccounts();
    if (accounts.isEmpty) {
      return getDefaultAccounts();
    }
    return accounts;
  }

  Future<List<Category>> loadExpenseCategoryData() async {
    final categoriesList =
        await _categoryDao.loadCategories(CategoryType.expense.value);

    if (categoriesList.isEmpty) {
      saveCategoryData(getDefaultExpenseCategories());
      return getDefaultExpenseCategories();
    } else {
      return categoriesList;
    }
  }

  Future<List<Category>> loadIncomeCategoryData() async {
    final categoriesList =
        await _categoryDao.loadCategories(CategoryType.income.value);

    if (categoriesList.isEmpty) {
      saveCategoryData(getDefaultIncomeCategories());
      return getDefaultIncomeCategories();
    } else {
      return categoriesList;
    }
  }

  Future<void> saveCategoryData(List<Category> categories) async {
    await _categoryDao.insertCategories(categories);
  }
  
  @override
  Future<void> createTransaction(Transaction transaction) async {
    if (transaction.typeSpending == TypeSpending.transfer) {
      _accountDao.transferMoney(transaction.account!.id, transaction.destination!.id, transaction.cash);
    } else if (transaction.typeSpending == TypeSpending.expense) {
      _accountDao.updateAccount(transaction.account!.copyWith(cash: transaction.account!.cash - transaction.cash));
    } else {
      _accountDao.updateAccount(transaction.account!.copyWith(cash: transaction.account!.cash + transaction.cash));
    }
    await _transactionDao.insertTransaction(transaction);

    debugPrint('Transaction saved: ${transaction.toJson()}');
  }
}
