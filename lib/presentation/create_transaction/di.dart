import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/data/repository/create_transaction_repository.dart';

import 'bloc/create_transaction_bloc.dart';

extension HistoryDI on DI {
  CreateTransactionBloc getCreateTransactionBloc({required CreateTransactionRepository repository, Transaction? transaction}) {
    return CreateTransactionBloc(repository: repository, transaction: transaction);
  }
}