import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/account.dart';

class CreateAccountRepository {
  Future<List<String>> getImageAssets() async {
    final imageAssets = [
      'card',
      'wallet_icon',
      'saving_icon',
      'visa_icon',
      'master_card_icon'
    ];
    return imageAssets;
  }

  Future<void> createAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    accountsList
        .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
        .toList();
    accountsList.add(jsonEncode(account.toJson()));
    await prefs.setStringList('accounts', accountsList);
    debugPrint('Created successfull');
  }

  Future<void> updateAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountList = prefs.getStringList('accounts') ?? [];

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
    debugPrint('Updated successfull');
  }
}
