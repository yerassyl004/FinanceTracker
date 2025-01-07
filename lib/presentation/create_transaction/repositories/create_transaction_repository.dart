import 'dart:convert';

import 'package:finance_app/app/utils/session.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/data/models/category.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateTransactionRepository {
  void saveTransaction(Transaction transaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    switch (transaction.typeSpending) {
      
      case TypeSpending.expense:
        expenseTransaction(transaction.account!, transaction.cash);
        break;
      case TypeSpending.income:
        incomeTransaction(transaction.account!, transaction.cash);
        break;
      case TypeSpending.transfer:
        transferTransaction(transaction.account!, transaction.destination!, transaction.cash);
        break;
    }

    transactionList.add(jsonEncode(transaction.toJson()));
    await prefs.setStringList('transactions', transactionList);

    debugPrint('Transaction saved: ${transaction.toJson()}');

    Session.instance?.addTransactions(transaction);
  }

  void updateTransactions(Transaction newTransaction, Transaction oldTransaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    var transactions = transactionList.map((jsonString) {
      return Transaction.fromJson(jsonDecode(jsonString));
    }).toList();

    switch (newTransaction.typeSpending) {
      case TypeSpending.expense:
        expenseTransaction(newTransaction.account!, newTransaction.cash - oldTransaction.cash);
        break;
      case TypeSpending.income:
        incomeTransaction(newTransaction.account!, newTransaction.cash - oldTransaction.cash);
        break;
      case TypeSpending.transfer:
        transferTransaction(newTransaction.account!, newTransaction.destination!, newTransaction.cash - oldTransaction.cash);
        break;
    }

    for (var i = 0; i < transactions.length; i++) {
      if (transactions[i].id == newTransaction.id) {
        transactions[i] = newTransaction;
        break;
      }
    }

    final updatedTransactionList = transactions.map((transaction) {
      return jsonEncode(transaction.toJson());
    }).toList();

    await prefs.setStringList('transactions', updatedTransactionList);
  }

  void expenseTransaction(Account selectedAccount, double cash) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];
    List<Account> accounts = accountsList.map((jsonString) {
      return Account.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var account in accounts) {
      if (account.id == selectedAccount.id) {
        account.cash -= cash;
      }
    }

    final updatedAccountsList =
        accounts.map((account) => jsonEncode(account.toJson())).toList();
    await prefs.setStringList('accounts', updatedAccountsList);
  }

  void incomeTransaction(Account selectedAccount, double cash) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];
    List<Account> accounts = accountsList.map((jsonString) {
      return Account.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var account in accounts) {
      if (account.id == selectedAccount.id) {
        account.cash += cash;
      }
    }

    final updatedAccountsList =
        accounts.map((account) => jsonEncode(account.toJson())).toList();
    await prefs.setStringList('accounts', updatedAccountsList);
  }

  void transferTransaction(
      Account selectedAccount, Account receiverAccount, double cash) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];
    List<Account> accounts = accountsList.map((jsonString) {
      return Account.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var account in accounts) {
      if (account.title == selectedAccount.title) {
        account.cash -= cash;
      }
      if (account.title == receiverAccount.title) {
        account.cash += cash;
      }
    }

    final updatedAccountsList =
        accounts.map((account) => jsonEncode(account.toJson())).toList();
    await prefs.setStringList('accounts', updatedAccountsList);
  }

  Future<List<Account>> loadAccountData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    if (accountsList.isEmpty) {
      saveAccountData(getDefaultAccounts());
      return getDefaultAccounts();
    } else {
      return accountsList
          .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }

  Future<void> saveAccountData(List<Account> accounts) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        accounts.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('accounts', accountsList);
  }

  List<Account> getDefaultAccounts() {
    return [
      Account(cash: 10000, icon: 'card', title: 'Card'),
      Account(cash: 10000, icon: 'cash_icon', title: 'Cash'),
      Account(cash: 5000, icon: 'saving_icon', title: 'Saving'),
    ];
  }

  List<Category> _getDefaultExpenseCategories() {
    return [
      Category(title: 'Food', icon: 'foods_icon', type: CategoryType.expense),
      Category(title: 'Transport', icon: 'car_icon', type: CategoryType.expense),
      Category(title: 'Clothes', icon: 'clothes_icon', type: CategoryType.expense),
      Category(title: 'Shopping', icon: 'shopping_icon', type: CategoryType.expense),
      Category(title: 'Home', icon: 'home_icon', type: CategoryType.expense),
      Category(title: 'Health', icon: 'health_icon', type: CategoryType.expense),
      Category(title: 'Bills', icon: 'bills_icon', type: CategoryType.expense),
      Category(title: 'Education', icon: 'education_icon', type: CategoryType.expense),
      Category(title: 'Beauty', icon: 'beauty_icon', type: CategoryType.expense),
    ];
  }

  List<Category> _getDefaultIncomeCategories() {
    return [
      Category(title: 'Salary', icon: 'salary_icon', type: CategoryType.income),
      Category(title: 'Awards', icon: 'awards_icon', type: CategoryType.income),
      Category(title: 'Rental', icon: 'rental_icon', type: CategoryType.income),
      Category(title: 'Sale', icon: 'sale_icon', type: CategoryType.income),
      Category(title: 'Grants', icon: 'grants_icon', type: CategoryType.income),
      Category(title: 'Coupons', icon: 'coupons_icon', type: CategoryType.income),
      Category(title: 'Refunds', icon: 'refunds_icon', type: CategoryType.income),
      Category(title: 'Lottery', icon: 'lottery_icon', type: CategoryType.income)
    ];
  }

  Future<List<Category>> loadExpenseCategoryData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoriesList = prefs.getStringList('expenseCategory') ?? [];

    if (categoriesList.isEmpty) {
      saveExpenseCategoryData(_getDefaultExpenseCategories());
      return _getDefaultExpenseCategories();
    } else {
      return categoriesList
          .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }

  Future<List<Category>> loadIncomeCategoryData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoriesList = prefs.getStringList('incomeCategory') ?? [];

    if (categoriesList.isEmpty) {
      saveIncomeCategoryData(_getDefaultIncomeCategories());
      return _getDefaultIncomeCategories();
    } else {
      return categoriesList
          .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }

  Future<void> saveExpenseCategoryData(List<Category> categories) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        categories.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('expenseCategory', accountsList);
  }

  Future<void> saveIncomeCategoryData(List<Category> categories) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        categories.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('incomeCategory', accountsList);
  }
}