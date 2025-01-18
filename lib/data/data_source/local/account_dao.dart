import 'package:finance_app/data/data_source/local/database_helper.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:sqflite/sqflite.dart';

class AccountDao {
  final dbHelper = DatabaseHelper.instance;

  Future<void> insertAccounts(List<Account> categories) async {
    final db = await dbHelper.database;

    final accountsMaps = categories.map((account) => account.toJson()).toList();

    final batch = db.batch();
    for (var accountMap in accountsMaps) {
      batch.insert(
        'accounts',
        accountMap,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  /// Add a new account
  Future<int> insertAccount(Account account) async {
    final db = await dbHelper.database;
    return await db.insert('accounts', account.toJson());
  }

  /// Get all accounts
  Future<List<Account>> getAccounts() async {
    final db = await DatabaseHelper.instance.database;
    final List<Map<String, dynamic>> maps = await db.query('accounts');

    return List.generate(maps.length, (i) {
      return Account.fromJson(maps[i]);
    });
  }

  /// Delete an account by ID
  Future<int> deleteAccount(String id) async {
    final db = await dbHelper.database;
    return await db.delete(
      'accounts',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Update account details
  Future<int> updateAccount(Account account) async {
    final db = await dbHelper.database;
    return await db.update(
      'accounts',
      account.toJson(),
      where: 'id = ?',
      whereArgs: [account.id],
    );
  }

  /// Transfer money between accounts
  Future<void> transferMoney(String fromAccountId, String toAccountId, double amount) async {
    final db = await dbHelper.database;

    // Use a transaction to ensure atomicity
    await db.transaction((txn) async {
      // Deduct from source account
      final fromAccount = await getAccountById(fromAccountId);
      if (fromAccount.cash < amount) {
        throw Exception("Insufficient funds");
      }
      final updatedFromAccount = fromAccount.copyWith(cash: fromAccount.cash - amount);
      await updateAccount(updatedFromAccount);

      // Add to destination account
      final toAccount = await getAccountById(toAccountId);
      final updatedToAccount = toAccount.copyWith(cash: toAccount.cash + amount);
      await updateAccount(updatedToAccount);
    });
  }

  /// Get an account by ID
  Future<Account> getAccountById(String id) async {
    final db = await dbHelper.database;
    final result = await db.query(
      'accounts',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isEmpty) {
      throw Exception('Account not found');
    }
    return Account.fromJson(result.first);
  }
}
