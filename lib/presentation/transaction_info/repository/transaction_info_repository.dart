import 'dart:convert';

import 'package:finance_app/app/utils/session.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionInfoRepository {
  Future<void> deleteTransaction(Transaction transaction) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> transactionList =
        prefs.getStringList('transactions') ?? [];

    var transactions = transactionList.map((jsonString) {
      return Transaction.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < transactions.length; i++) {
      if (transactions[i].id == transaction.id) {
        transactions.remove(transactions[i]);
        break;
      }
    }

    final updatedTransactionList = transactions.map((transaction) {
      return jsonEncode(transaction.toJson());
    }).toList();

    await prefs.setStringList('transactions', updatedTransactionList);
  }

  void removeTransaction(Transaction transaction) async {
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
        transferTransaction(
            transaction.account!, transaction.destination!, transaction.cash);
        break;
    }

    var transactions = transactionList.map((jsonString) {
      return Transaction.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < transactions.length; i++) {
      if (transactions[i].id == transaction.id) {
        transactions.remove(transactions[i]);
        break;
      }
    }
    final updatedTransactionList = transactions.map((transaction) {
      return jsonEncode(transaction.toJson());
    }).toList();
    await prefs.setStringList('transactions', updatedTransactionList);

    debugPrint('Transaction saved: ${transaction.toJson()}');

    Session.instance?.addTransactions(transaction);
  }

  void expenseTransaction(Account selectedAccount, double cash) async {
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

  void incomeTransaction(Account selectedAccount, double cash) async {
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

  void transferTransaction(
      Account selectedAccount, Account receiverAccount, double cash) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];
    List<Account> accounts = accountsList.map((jsonString) {
      return Account.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var account in accounts) {
      if (account.id == selectedAccount.id) {
        account.cash += cash;
      }
      if (account.id == receiverAccount.id) {
        account.cash -= cash;
      }
    }

    final updatedAccountsList =
        accounts.map((account) => jsonEncode(account.toJson())).toList();
    await prefs.setStringList('accounts', updatedAccountsList);
  }
}
