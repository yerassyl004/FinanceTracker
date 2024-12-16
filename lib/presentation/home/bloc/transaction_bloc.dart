import 'package:finance_app/presentation/home/repositories/count_cash_service.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    required DateTime currentMonth,
    required List<Transaction> transactions,
    String? errorMessage,
  }) = _TransactionData;
}

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final HomeRepository repository;
  TransactionBloc({required this.repository}) : super(const TransactionState.initial()) {
    on<LoadTransactionItems>(_onLoadTransactions);
    on<UpdateTransactionItems>(_onUpdateTransactions);

    add(LoadTransactionItems(month: DateTime.now()));
  }

  Future<void> _onLoadTransactions(
      LoadTransactionItems event, Emitter<TransactionState> emit) async {
    emit(const TransactionState.loading());
    try {
      final transactions = await repository.loadTransactions(event.month);
      emit(TransactionState.loaded(
          data: TransactionData(
              currentMonth: event.month, transactions: transactions)));
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }

  Future<void> _onUpdateTransactions(
      UpdateTransactionItems event, Emitter<TransactionState> emit) async {
    emit(const TransactionState.loading());
    try {
      final transactions = await repository.loadTransactions(event.month);
      emit(TransactionState.loaded(
          data: TransactionData(
              currentMonth: event.month, transactions: transactions)));
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }
}
