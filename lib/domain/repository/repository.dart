import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';

abstract class Repository{

  /// Transaction
  Future<Either<Failure, bool>> updateTransaction(Transaction transaction);
  Future<Either<Failure, bool>> createTransaction(Transaction transaction);
  Future<Either<Failure, List<Transaction>>> loadTransactions(DateTime selectedDate);
  Future<double> expenseAmount(List<Transaction> transactions);
  Future<double> incomeAmount(List<Transaction> transactions);

  /// Account
  Future<Either<Failure, List<Account>>> loadAccountData();
  Future<Either<Failure, bool>> updateAccount(Account account);
  Future<Either<Failure, bool>> createAccount(Account account);
  Future<Either<Failure, String>> deleteAccountData(String accountId);

  
  /// Category
  Future<Either<Failure, String>> updateCategory(Category category);
  Future<Either<Failure, String>> createCategory(Category category);
  Future<Either<Failure, String>> deleteCategoryData(String categoryId);
  Future<Either<Failure, List<Category>>> loadCategoryData(CategoryType type);
}