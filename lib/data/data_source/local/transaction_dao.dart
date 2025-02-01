import 'package:finance_app/data/data_source/local/database_helper.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';

class TransactionDao {
  final dbHelper = DatabaseHelper.instance;

  Future<int> insertTransaction(Transaction transaction) async {
    final db = await DatabaseHelper.instance.database;
    return await db.insert('transactions', transaction.toJson());
  }

  Future<List<Transaction>> getTransactions(DateTime selectedDate) async {
    final db = await DatabaseHelper.instance.database;

    final result = await db.query(
      'transactions',
      where: "strftime('%Y-%m', date) = ?",
      whereArgs: [
        "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}",
      ],
      orderBy: 'date DESC',
    );

    return result.map((json) => Transaction.fromJson(json)).toList();
  }

  Future<List<Transaction>> getTransactionsWithType(
      DateTime selectedDate, TypeSpending typeSpending) async {
    final db = await DatabaseHelper.instance.database;

    final result = await db.query(
      'transactions',
      where: "strftime('%Y-%m', date) = ? AND typeSpending = ?",
      whereArgs: [
        "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}",
        typeSpending.index,
      ],
      orderBy: 'date DESC',
    );

    return result.map((json) => Transaction.fromJson(json)).toList();
  }

  Future<int> deleteTransaction(String id) async {
    final db = await DatabaseHelper.instance.database;
    return await db.delete(
      'transactions',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> updateTransaction(Transaction transaction) async {
    final db = await DatabaseHelper.instance.database;
    return await db.update(
      'transactions',
      transaction.toJson(),
      where: 'id = ?',
      whereArgs: [transaction.id],
    );
  }
}
