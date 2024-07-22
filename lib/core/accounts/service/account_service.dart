import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:finance_app/core/models/account.dart';

class AccountService {
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
}
