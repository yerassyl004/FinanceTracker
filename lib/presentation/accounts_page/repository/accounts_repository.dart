import 'dart:convert';

import 'package:finance_app/data/models/account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountsRepository {
  Future<List<Account>> loadAccountData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    return accountsList
        .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
        .toList();
  }

  Future<void> deleteAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    accountsList
        .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
        .toList();
    accountsList.remove(jsonEncode(account.toJson()));
    await prefs.setStringList('accounts', accountsList);
  }

  Future<void> saveAccountData(List<Account> accounts) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        accounts.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('accounts', accountsList);
  }
}