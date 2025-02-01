import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/segment.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:flutter/material.dart';

class RepositoryImpl extends Repository {
  final CategoryDao _categorytDao;
  final AccountDao _accountDao;
  final TransactionDao _transactionDao;

  RepositoryImpl(this._categorytDao, this._accountDao, this._transactionDao);

  @override
  Future<Either<Failure, List<Account>>> loadAccountData() async {
    final accounts = await _accountDao.getAccounts();
    if (accounts.isEmpty) {
      final defaultAccount = getDefaultAccounts();
      await _accountDao.insertAccounts(defaultAccount);
      return Right(defaultAccount);
    }
    return Right(accounts);
  }

  @override
  Future<Either<Failure, List<Transaction>>> loadTransactions(
      DateTime selectedDate) async {
    try {
      final transactions = await _transactionDao.getTransactions(selectedDate);
      return Right(transactions);
    } catch (e) {
      return Left(Failure(-1, AppStrings.unknownError));
    }
  }

  @override
  Future<double> expenseAmount(List<Transaction> transactions) async {
    if (transactions.isEmpty) {
      return 0;
    }
    double count = 0.0;
    for (var transaction in transactions) {
      if (transaction.typeSpending == TypeSpending.expense) {
        count += transaction.cash;
      }
    }
    return count;
  }

  @override
  Future<double> incomeAmount(List<Transaction> transactions) async {
    if (transactions.isEmpty) {
      return 0;
    }
    double count = 0.0;
    for (var transaction in transactions) {
      if (transaction.typeSpending == TypeSpending.income) {
        count += transaction.cash;
      }
    }
    return count;
  }

  @override
  Future<Either<Failure, String>> deleteAccountData(String accountId) async {
    try {
      await _accountDao.deleteAccount(accountId);
      return Right('Account deleted successfully');
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> deleteCategoryData(String categoryId) async {
    try {
      await _categorytDao.deleteCategory(categoryId);
      return Right('Category deleted successfully');
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> loadCategoryData(
      CategoryType type) async {
    final accounts = await _categorytDao.loadCategories(type.index);
    if (accounts.isEmpty) {
      List<Category> categories = [];
      switch (type) {
        case CategoryType.income:
          categories = getDefaultIncomeCategories();
        case CategoryType.expense:
          categories = getDefaultExpenseCategories();
          _categorytDao.insertCategories(getDefaultIncomeCategories());
          _categorytDao.insertCategories(getDefaultExpenseCategories());
      }
      return Right(categories);
    }
    return Right(accounts);
  }

  @override
  Future<Either<Failure, String>> createCategory(Category category) async {
    try {
      await _categorytDao.insertCategory(category);
      return Right('Categories saved successfully');
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> createTransaction(
      Transaction transaction) async {
    try {
      switch (transaction.typeSpending) {
        case TypeSpending.expense:
          await _accountDao.updateAccount(transaction.account!
              .copyWith(cash: transaction.account!.cash - transaction.cash));
        case TypeSpending.income:
          await _accountDao.updateAccount(transaction.account!
              .copyWith(cash: transaction.account!.cash + transaction.cash));
        case TypeSpending.transfer:
          await _accountDao.updateAccount(transaction.account!
              .copyWith(cash: transaction.account!.cash - transaction.cash));
          await _accountDao.updateAccount(transaction.destination!.copyWith(
              cash: transaction.destination!.cash + transaction.cash));
      }
      await _transactionDao.insertTransaction(transaction);
      return Right(true);
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> updateTransaction(
      Transaction transaction) async {
    try {
      switch (transaction.typeSpending) {
        case TypeSpending.expense:
          await _accountDao.updateAccount(
            transaction.account!
                .copyWith(cash: transaction.account!.cash - transaction.cash),
          );
          break;
        case TypeSpending.income:
          await _accountDao.updateAccount(
            transaction.account!
                .copyWith(cash: transaction.account!.cash + transaction.cash),
          );
          break;
        case TypeSpending.transfer:
          await _accountDao.updateAccount(
            transaction.account!
                .copyWith(cash: transaction.account!.cash - transaction.cash),
          );
          await _accountDao.updateAccount(
            transaction.destination!.copyWith(
                cash: transaction.destination!.cash + transaction.cash),
          );
          break;
      }

      await _transactionDao.updateTransaction(transaction);
      return Right(true);
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> createAccount(Account account) async {
    try {
      await _accountDao.insertAccount(account);
      return Right(true);
    } catch (e) {
      return Left(Failure(-1, AppStrings.defaultError));
    }
  }

  @override
  Future<Either<Failure, bool>> updateAccount(Account account) async {
    try {
      await _accountDao.updateAccount(account);
      return Right(true);
    } catch (e) {
      return Left(Failure(-1, AppStrings.defaultError));
    }
  }

  @override
  Future<Either<Failure, String>> updateCategory(Category category) async {
    try {
      await _categorytDao.updateCategory(category);
      return Right('Categories updated successfully');
    } catch (e) {
      return Left(Failure(-1, AppStrings.defaultError));
    }
  }

  @override
  Future<Either<Failure, List<Segment>>> getSegmentPercentage(
      List<Transaction> transactions) async {
    final Map<String, double> categoryTotals = {};
    double totalAmount = 0.0;

    final List<Color> colors = [
      Colors.blue,
      Colors.red,
      Colors.orange,
      Colors.green,
      Colors.purple,
      Colors.yellow,
      Colors.cyan,
      Colors.pink,
    ];

    for (var transaction in transactions) {
      if (transaction.category != null) {
        totalAmount += transaction.cash;
        categoryTotals.update(
          transaction.category!.title,
          (value) => value + transaction.cash,
          ifAbsent: () => transaction.cash,
        );
      }
    }

    final sortedCategoryTotals = categoryTotals.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    List<Segment> segments = sortedCategoryTotals.map((entry) {
      final category = transactions
          .firstWhere((transaction) => transaction.category!.title == entry.key)
          .category!;
      final colorIndex = sortedCategoryTotals.indexOf(entry) % colors.length;
      return Segment(
        color: colors[colorIndex],
        percent: (entry.value / totalAmount) * 100,
        icon: category.icon,
      );
    }).toList();

    return Right(segments);
  }

  @override
  Future<Either<Failure, List<Analysis>>> getExpensePercentItem(
      List<Transaction> transactions) async {
    try {
      final Map<String, Analysis> analysisMap = {};

      for (var transaction in transactions) {
        final category = transaction.category;
        if (category != null) {
          analysisMap
              .putIfAbsent(
                category.title,
                () => Analysis(
                  category: category,
                  cash: 0.0,
                  typeSpending: transaction.typeSpending,
                ),
              )
              .cash += transaction.cash;
        }
      }

      final List<Analysis> analysisList = analysisMap.values.toList()
        ..sort((a, b) => b.cash.compareTo(a.cash));

      return Right(analysisList);
    } catch (e) {
      return Left(Failure(-1, 'Error calculating expense percentages: $e'));
    }
  }
  
  @override
  Future<Either<Failure, List<Transaction>>> loadTransactionsWithType(DateTime selectedDate, TypeSpending typeSpending) async {
    print('TypeSpending:: ${typeSpending.name}');
    try {
      final transactions = await _transactionDao.getTransactionsWithType(selectedDate, typeSpending);
      print('transactions::: ${transactions}');
      return Right(transactions);
    } catch (e) {
      return Left(Failure(-1, AppStrings.unknownError));
    }
  }
}
