import 'dart:convert';

import 'package:finance_app/core/models/account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccountService {
  Future<void> createAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    accountsList
        .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
        .toList();
    accountsList.add(jsonEncode(account.toJson()));
    await prefs.setStringList('accounts', accountsList);
  }

  void updateAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountList =
        prefs.getStringList('accounts') ?? [];

    var accounts = accountList.map((jsonString) {
      return Account.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < accounts.length; i++) {
      if (accounts[i].id == account.id) {
        accounts[i] = account;
        break;
      }
    }

    final updatedAccountList = accounts.map((acc) {
      return jsonEncode(acc.toJson());
    }).toList();

    await prefs.setStringList('accounts', updatedAccountList);
  }
}
