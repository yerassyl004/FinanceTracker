// class AccountsRepository {
//   final AccountDao _accountDao = AccountDao();
  
//   Future<List<Account>> loadAccountData() async {
//     final accounts = await _accountDao.getAccounts();
//     if (accounts.isEmpty) {
//       saveAccountData(getDefaultAccounts());
//       return getDefaultAccounts();
//     }
//     return accounts;
//   }

//   Future<void> deleteAccount(Account account) async {
//     await _accountDao.deleteAccount(account.id);
//   }

//   Future<void> saveAccountData(List<Account> accounts) async {
//     await _accountDao.insertAccounts(accounts);
//   }
// }