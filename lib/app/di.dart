/// Created by alex@justprodev.com on 14.05.2021.
import 'dart:io' as io;
import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_bloc.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';
import 'package:get_it/get_it.dart';

/// one public instance of [DI] used across the app
final di = DI._internal();
GetIt getIt = GetIt.instance;

class DI {

  DI._internal();

  ///initLocators() should be called in main
  void initLocators() {
    ///navigation
    getIt.registerLazySingleton<TransactionBloc>(() => TransactionBloc(repository: getIt()));
    getIt.registerLazySingleton<CreateTransactionBloc>(() => CreateTransactionBloc(repository: getIt()));
    getIt.registerLazySingleton<TransactionInfoBloc>(() => TransactionInfoBloc(repository: getIt(), transaction: getIt()));
    getIt.registerLazySingleton<AccountsBloc>(() => AccountsBloc(repository: getIt()));
  }
}
