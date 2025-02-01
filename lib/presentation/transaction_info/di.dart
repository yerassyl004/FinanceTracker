import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';

extension TransactionInfoDI on DI {
  TransactionInfoBloc getTransactionInfoBloc(Transaction transaction) {
    return TransactionInfoBloc(transaction, getIt());
  }
}