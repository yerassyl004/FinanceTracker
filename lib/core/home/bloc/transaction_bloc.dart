import 'package:finance_app/core/home/bloc/transaction_event.dart';
import 'package:finance_app/core/home/bloc/transaction_state.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final CountCashService cashService;

  TransactionBloc({required this.cashService}) : super(TransactionInitial()) {
    on<LoadTransactionItems>(_onLoadTransactions);
  }

  Future<void> _onLoadTransactions(
      LoadTransactionItems event, Emitter<TransactionState> emit) async {
    emit(TransactionLoading());
    try {
      final transactions = await cashService.loadTransactions(event.month);
      emit(TransactionLoaded(transaction: transactions));
    } catch (e) {
      emit(TransactionError(e.toString()));
    }
  }
}
