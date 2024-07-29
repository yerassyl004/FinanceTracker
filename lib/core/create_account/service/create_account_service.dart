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
}
