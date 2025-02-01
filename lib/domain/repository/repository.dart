import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/segment.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';

abstract class Repository{

  /// Transaction
  Future<Either<Failure, String>> updateTransaction(Transaction transaction);
  Future<Either<Failure, String>> createTransaction(Transaction transaction);
  Future<Either<Failure, String>> deleteTransaction(Transaction transaction);
  Future<Either<Failure, List<Transaction>>> loadTransactions(DateTime selectedDate);
  Future<Either<Failure, List<Transaction>>> loadTransactionsBySpending(DateTime selectedDate, TypeSpending typeSpending);
  Future<Either<Failure, List<Transaction>>> loadTransactionsByCategory(DateTime selectedDate, Category category);
  Future<double> expenseAmount(List<Transaction> transactions);
  Future<double> incomeAmount(List<Transaction> transactions);

  /// Analys
  Future<Either<Failure, List<Segment>>> getSegmentPercentage(List<Transaction> transactions);
  Future<Either<Failure, List<Analysis>>> getExpensePercentItem(List<Transaction> transactions);

  /// Account
  Future<Either<Failure, List<Account>>> loadAccountData();
  Future<Either<Failure, String>> updateAccount(Account account);
  Future<Either<Failure, String>> createAccount(Account account);
  Future<Either<Failure, String>> deleteAccountData(String accountId);

  
  /// Category
  Future<Either<Failure, String>> updateCategory(Category category);
  Future<Either<Failure, String>> createCategory(Category category);
  Future<Either<Failure, String>> deleteCategoryData(String categoryId);
  Future<Either<Failure, List<Category>>> loadCategoryData(CategoryType type);
}