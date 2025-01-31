import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/transaction.dart';

import 'bloc/create_transaction_bloc.dart';

extension HistoryDI on DI {
  CreateTransactionBloc getCreateTransactionBloc(Transaction? transaction) {
    return CreateTransactionBloc(getIt(), getIt(), getIt(), getIt(), transaction);
  }
}