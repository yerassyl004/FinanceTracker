import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/repository/repository_impl.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/account/create_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/create_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/create_transaction_usecase.dart';
import 'package:finance_app/domain/usecases.dart/account/delete_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/delete_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/delete_transaction_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/expence_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/income_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/load_analysis_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/load_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transaction_by_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_by_type_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/segment_persentage_usecase.dart';
import 'package:finance_app/domain/usecases.dart/account/update_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/update_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/update_transaction_usecase.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/data_source/local/transaction_dao.dart';
import '../domain/usecases.dart/account/load_account_usecase.dart';

/// one public instance of [DI] used across the app
final di = DI._internal();
GetIt getIt = GetIt.instance;

class DI {
  DI._internal();

  final GetIt getIt = GetIt.instance;

  /// initLocators() should be called in main
  void initLocators() {
    // Register the Repository
    getIt.registerLazySingleton<Repository>(() => RepositoryImpl(getIt(), getIt(), getIt()));
    // getIt.registerLazySingleton(AccountsRepository)

    /// Bloc registrations
    getIt.registerLazySingleton<TransactionBloc>(() => TransactionBloc(getIt(), getIt(), getIt()));
    getIt.registerLazySingleton<CreateTransactionBloc>(() => CreateTransactionBloc(getIt(), getIt(), getIt(), getIt(), getIt()));
    getIt.registerLazySingleton<TransactionInfoBloc>(() => TransactionInfoBloc(getIt(), getIt()));

    /// Usecase registrations
    
    getIt.registerFactory<CategoryDao>(() => CategoryDao());
    getIt.registerFactory<AccountDao>(() => AccountDao());
    getIt.registerFactory<TransactionDao>(() => TransactionDao());

    /// Transaction
    getIt.registerFactory<LoadTransactionsUsecase>(() => LoadTransactionsUsecase(getIt()));
    getIt.registerFactory<CreateTransactionUsecase>(() => CreateTransactionUsecase(getIt()));
    getIt.registerFactory<UpdateTransactionUsecase>(() => UpdateTransactionUsecase(getIt()));
    getIt.registerFactory<DeleteTransactionUsecase>(() => DeleteTransactionUsecase(getIt()));
    getIt.registerFactory<IncomeCountUsecase>(() => IncomeCountUsecase(getIt()));
    getIt.registerFactory<ExpenceCountUsecase>(() => ExpenceCountUsecase(getIt()));
    getIt.registerFactory<LoadTransactionsByTypeUsecase>(() => LoadTransactionsByTypeUsecase(getIt()));
    getIt.registerFactory<LoadTransactionByCategoryUsecase>(() => LoadTransactionByCategoryUsecase(getIt()));

    /// Account
    getIt.registerFactory<DeleteAccountUsecase>(() => DeleteAccountUsecase(getIt()));
    getIt.registerFactory<CreateAccountUsecase>(() => CreateAccountUsecase(getIt()));
    getIt.registerFactory<UpdateAccountUsecase>(() => UpdateAccountUsecase(getIt()));
    getIt.registerFactory<LoadAccountUseCase>(() => LoadAccountUseCase(getIt()));


    /// Category
    getIt.registerFactory<CreateCategoryUsecase>(() => CreateCategoryUsecase(getIt()));
    getIt.registerFactory<UpdateCategoryUsecase>(() => UpdateCategoryUsecase(getIt()));
    getIt.registerFactory<LoadCategoryUsecase>(() => LoadCategoryUsecase(getIt()));
    getIt.registerFactory<DeleteCategoryUsecase>(() => DeleteCategoryUsecase(getIt()));

    /// Analysis
    getIt.registerFactory<LoadAnalysisUsecase>(() => LoadAnalysisUsecase(getIt()));
    getIt.registerFactory<SegmentPersentageUsecase>(() => SegmentPersentageUsecase(getIt()));
  }
}
