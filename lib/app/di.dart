import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/repository/repository_impl.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/create_transaction_usecase.dart';
import 'package:finance_app/domain/usecases.dart/delete_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/delete_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_transactions_usecase.dart';
import 'package:finance_app/domain/usecases.dart/update_transaction_usecase.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_bloc.dart';
import 'package:finance_app/presentation/categories_page/bloc/category_bloc.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/data_source/local/transaction_dao.dart';
import '../domain/usecases.dart/load_account_usecase.dart';

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
    getIt.registerLazySingleton<TransactionBloc>(() => TransactionBloc(getIt()));
    getIt.registerLazySingleton<CreateTransactionBloc>(() => CreateTransactionBloc(getIt(), getIt(), getIt(), getIt(), getIt()));
    getIt.registerLazySingleton<TransactionInfoBloc>(() => TransactionInfoBloc(repository: getIt(), transaction: getIt()));
    getIt.registerLazySingleton<AccountsBloc>(() => AccountsBloc(getIt(), getIt()));
    getIt.registerLazySingleton<CategoryBloc>(() => CategoryBloc(getIt(), getIt()));

    /// Usecase registrations
    
    getIt.registerFactory<CategoryDao>(() => CategoryDao());
    getIt.registerFactory<AccountDao>(() => AccountDao());
    getIt.registerFactory<TransactionDao>(() => TransactionDao());
    getIt.registerFactory<LoadTransactionsUsecase>(() => LoadTransactionsUsecase(getIt()));
    getIt.registerFactory<LoadAccountUseCase>(() => LoadAccountUseCase(getIt()));
    getIt.registerFactory<DeleteAccountUsecase>(() => DeleteAccountUsecase(getIt()));
    getIt.registerFactory<LoadCategoryUsecase>(() => LoadCategoryUsecase(getIt()));
    getIt.registerFactory<DeleteCategoryUsecase>(() => DeleteCategoryUsecase(getIt()));
    getIt.registerFactory<CreateTransactionUsecase>(() => CreateTransactionUsecase(getIt()));
    getIt.registerFactory<UpdateTransactionUsecase>(() => UpdateTransactionUsecase(getIt()));
  }
}
