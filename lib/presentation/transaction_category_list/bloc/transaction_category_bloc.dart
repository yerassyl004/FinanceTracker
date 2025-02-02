import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transaction_by_category_usecase.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/page/transactions_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_bloc.freezed.dart';

@freezed
class TransactionCategoryEvent with _$TransactionCategoryEvent {
  const factory TransactionCategoryEvent.loadTransactions({
    required Category category,
    required DateTime selectedMonth,
  }) = LoadTransactionsCategory;
}

@freezed
class TransactionCategoryState with _$TransactionCategoryState {
  const factory TransactionCategoryState.initial() = TransactionCategoryInitial;
  const factory TransactionCategoryState.loading() = TransactionCategoryLoading;
  const factory TransactionCategoryState.loaded(
      {required List<Transaction> transactions}) = TransactionCategoryLoaded;
  const factory TransactionCategoryState.error({required String message}) =
      TransactionCategoryError;
}

class TransactionCategoryBloc
    extends Bloc<TransactionCategoryEvent, TransactionCategoryState> {
  final LoadTransactionByCategoryUsecase loadTransactionByCategoryUsecase;
  final TransactionsCategoryArguments args;

  TransactionCategoryBloc(this.loadTransactionByCategoryUsecase, this.args)
      : super(const TransactionCategoryState.initial()) {
    on<LoadTransactionsCategory>(_loadTransactions);

    add(TransactionCategoryEvent.loadTransactions(category: args.category, selectedMonth: args.dateTime));
  }

  Future<void> _loadTransactions(LoadTransactionsCategory event,
      Emitter<TransactionCategoryState> emit) async {
    emit(const TransactionCategoryState.loading());

    final result = await loadTransactionByCategoryUsecase.execute(
        LoadTransactionsByCategoryArguments(
            event.selectedMonth, event.category));

    result.fold(
        (fail) => emit(TransactionCategoryState.error(message: fail.message)),
        (transactions) {
          debugPrint('transactions::::::: ${transactions.length}');
            emit(TransactionCategoryState.loaded(transactions: transactions));

      });
  }
}
