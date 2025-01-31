import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';

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
  Future<Either<Failure, String>> saveAccountData(
      List<Account> accounts) async {
    try {
      await _accountDao.insertAccounts(accounts);
      return Right('Accounts saved successfully');
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
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
      }
      return Right(categories);
    }
    return Right(accounts);
  }

  @override
  Future<Either<Failure, String>> saveCategoryData(
      List<Category> categories) async {
    try {
      await _categorytDao.insertCategories(categories);
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
            transaction.account!.copyWith(
                cash: transaction.account!.cash - transaction.cash),
          );
          break;
        case TypeSpending.income:
          await _accountDao.updateAccount(
            transaction.account!.copyWith(
                cash: transaction.account!.cash + transaction.cash),
          );
          break;
        case TypeSpending.transfer:
          await _accountDao.updateAccount(
            transaction.account!.copyWith(
                cash: transaction.account!.cash - transaction.cash),
          );
          await _accountDao.updateAccount(
            transaction.destination!.copyWith(
                cash:
                    transaction.destination!.cash + transaction.cash),
          );
          break;
      }

      await _transactionDao.updateTransaction(transaction);
      return Right(true);
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }
}
