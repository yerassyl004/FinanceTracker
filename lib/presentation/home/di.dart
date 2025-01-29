import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/usecases.dart/load_transactions_usecase.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';

extension HistoryDI on DI {
  TransactionBloc getHomeBloc(LoadTransactionsUsecase loadAccountUseCase1) {
    return TransactionBloc(loadAccountUseCase1);
  }
}