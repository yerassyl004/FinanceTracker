import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:flutter/material.dart';

import '../../domain/models/account.dart';

class CreateAccountRepository {
  final accountDao = AccountDao();
  
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
    await accountDao.insertAccount(account);
    debugPrint('Created successfull');
  }

  Future<void> updateAccount(Account account) async {
    await accountDao.updateAccount(account);
    debugPrint('Updated successfull');
  }
}
