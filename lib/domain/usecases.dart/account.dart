// import 'package:finance_app/data/repository/accounts_repository.dart';

// class Account {
//   final AccountsRepository _repository;

//   Account(this._repository);

//   Future<List<Account>> loadAccountData() async {
//     return _repository.loadAccountData();
//   }

//   Future<void> deleteAccount(Account account) async {
//     await _accountDao.deleteAccount(account.id);
//   }

//   Future<void> saveAccountData(List<Account> accounts) async {
//     await _accountDao.insertAccounts(accounts);
//   }
// }