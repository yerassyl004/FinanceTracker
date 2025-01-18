import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/usecases.dart/home_usecase.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';

extension HistoryDI on DI {
  TransactionBloc getHomeBloc({required HomeUsecase usecase}) {
    return TransactionBloc(usecase: usecase);
  }
}