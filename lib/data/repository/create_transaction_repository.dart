import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:flutter/widgets.dart';

class CreateTransactionRepository {
  final TransactionDao _transactionDao = TransactionDao();
  final AccountDao _accountDao = AccountDao();
  final CategoryDao _categoryDao = CategoryDao();

  Future<void> saveTransaction(Transaction transaction) async {
    updateAccount(transaction.account!
        .copyWith(cash: transaction.account!.cash -= transaction.cash));
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
    final senderAcc =
        selectedAccount.copyWith(cash: selectedAccount.cash - cash);
    final receiverAcc =
        receiverAccount.copyWith(cash: receiverAccount.cash + cash);

    await _accountDao.updateAccount(senderAcc);
    await _accountDao.updateAccount(receiverAcc);
  }

  Future<List<Account>> loadAccountData() async {
    final accounts = await _accountDao.getAccounts();
    if (accounts.isEmpty) {
      return getDefaultAccounts();
    }
    return accounts;
  }

  Future<List<Category>> loadExpenseCategoryData() async {
    saveCategoryData(getDefaultExpenseCategories());
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
    saveCategoryData(getDefaultIncomeCategories());
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
}
