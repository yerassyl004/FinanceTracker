import 'dart:convert';

import 'package:finance_app/core/models/account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionsService {
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
}
