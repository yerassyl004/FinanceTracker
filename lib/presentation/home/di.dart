import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';

import 'repositories/count_cash_service.dart';

extension HistoryDI on DI {
  TransactionBloc getHomeBloc({required HomeRepository repository}) {
    return TransactionBloc(repository: repository);
  }
}