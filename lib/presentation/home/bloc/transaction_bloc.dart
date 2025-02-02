import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/usecases.dart/transactions/expence_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/income_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_usecase.dart';
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
    @Default(0) double expenseAmount,
    @Default(0) double incomeAmount,
    String? errorMessage,
  }) = _TransactionData;
}

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final LoadTransactionsUsecase loadAccountUseCase;
  final ExpenceCountUsecase getExpenseAmountUseCase;
  final IncomeCountUsecase getIncomeAmountUseCase;
  TransactionBloc(this.loadAccountUseCase, this.getExpenseAmountUseCase,
      this.getIncomeAmountUseCase)
      : super(const TransactionState.initial()) {
    on<LoadTransactionItems>(_onLoadTransactions);
    on<UpdateTransactionItems>(_onUpdateTransactions);

    add(LoadTransactionItems(month: DateTime.now()));
  }

  Future<void> _onLoadTransactions(
      LoadTransactionItems event, Emitter<TransactionState> emit) async {
    emit(const TransactionState.loading());
    try {
      final result = await loadAccountUseCase.execute(event.month);

      await result.fold(
        (failure) async {
          emit(TransactionState.error(failure.toString()));
        },
        (transactions) async {
          double expenseAmount = 0;
          double incomeAmount = 0;

          final expenseResult =
              await getExpenseAmountUseCase.execute(transactions);
          expenseResult.fold((l) {}, (amount) => expenseAmount = amount);

          final incomeResult =
              await getIncomeAmountUseCase.execute(transactions);
          incomeResult.fold((l) {}, (amount) => incomeAmount = amount);

          if (!emit.isDone) {
            emit(TransactionState.loaded(
              data: TransactionData(
                currentMonth: event.month,
                transactions: transactions,
                expenseAmount: expenseAmount,
                incomeAmount: incomeAmount,
              ),
            ));
          }
        },
      );
    } catch (e) {
      if (!emit.isDone) {
        emit(TransactionState.error(e.toString()));
      }
    }
  }

  Future<void> _onUpdateTransactions(
      UpdateTransactionItems event, Emitter<TransactionState> emit) async {
    try {
      final result = await loadAccountUseCase.execute(event.month);

      result.fold(
        (failure) {
          emit(TransactionState.error(failure.toString()));
        },
        (transactions) {
          emit(TransactionState.loaded(
            data: TransactionData(
              currentMonth: event.month,
              transactions: transactions,
            ),
          ));
        },
      );
    } catch (e) {
      emit(TransactionState.error(e.toString()));
    }
  }
}
