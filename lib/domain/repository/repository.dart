import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';

abstract class Repository{
  Future<Either<Failure, bool>> updateTransaction(Transaction transaction);
  Future<Either<Failure, bool>> createTransaction(Transaction transaction);
  Future<Either<Failure, String>> saveCategoryData(List<Category> categories);
  Future<Either<Failure, String>> deleteCategoryData(String categoryId);
  Future<Either<Failure, List<Category>>> loadCategoryData(CategoryType type);
  Future<Either<Failure, String>> deleteAccountData(String accountId);
  Future<Either<Failure, List<Account>>> loadAccountData();
  Future<Either<Failure, String>> saveAccountData(List<Account> accounts);
  Future<Either<Failure, List<Transaction>>> loadTransactions(DateTime selectedDate);
  Future<double> expenseAmount(List<Transaction> transactions);
  Future<double> incomeAmount(List<Transaction> transactions);
}