import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/usecases.dart/delete_transaction_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_info_event.dart';
part 'transaction_info_state.dart';
part 'transaction_info_bloc.freezed.dart';

enum Navigate { TRANSACTION }

@freezed
class TransactionInfoData with _$TransactionInfoData {
  const factory TransactionInfoData({
    required Transaction transaction,
  }) = _TransactionInfoData;
}

class TransactionInfoBloc
    extends Bloc<TransactionInfoEvent, TransactionInfoState> {
  final Transaction transaction;
  final DeleteTransactionUsecase deleteTransactionUsecase;

  TransactionInfoBloc(this.transaction, this.deleteTransactionUsecase)
      : super(TransactionInfoState.initial()) {
    on<ShowTransactionInfoEvent>(_show);
    on<NavigateTransactionInfoEvent>(_navigate);
    on<RemoveTransactionInfoEvent>(_remove);
  }

  Future<void> _show(ShowTransactionInfoEvent event,
      Emitter<TransactionInfoState> emit) async {
    emit(TransactionInfoState.show(
        data: TransactionInfoData(transaction: transaction)));
  }

  Future<void> _navigate(NavigateTransactionInfoEvent event,
      Emitter<TransactionInfoState> emit) async {}

  Future<void> _remove(RemoveTransactionInfoEvent event,
      Emitter<TransactionInfoState> emit) async {
    await deleteTransactionUsecase.execute(event.data.transaction);
  }
}
