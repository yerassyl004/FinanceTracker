import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';

extension HistoryDI on DI {
  TransactionBloc getHomeBloc() {
    return TransactionBloc(getIt(), getIt(), getIt());
  }
}