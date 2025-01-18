import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';
import 'package:finance_app/data/repository/transaction_info_repository.dart';

extension TransactionInfoDI on DI {
  TransactionInfoBloc getTransactionInfoBloc({required TransactionInfoRepository repository, required Transaction transaction}) {
    return TransactionInfoBloc(repository: repository, transaction: transaction);
  }
}