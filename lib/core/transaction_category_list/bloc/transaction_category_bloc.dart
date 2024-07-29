import 'package:finance_app/core/transaction_category_list/bloc/transaction_category_event.dart';
import 'package:finance_app/core/transaction_category_list/bloc/transaction_category_state.dart';
import 'package:finance_app/core/transaction_category_list/service/transaction_category_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionCategoryBloc extends Bloc<TransactionCategoryEvent, TransactionCategoryState> {
  final TransactionCategoryService service;
  TransactionCategoryBloc({required this.service}) : super(TransactionCategoryInitial()) {
    on<LoadTransactionsCategory>(loadTransactions);
  }

  Future<void> loadTransactions(
    LoadTransactionsCategory event, Emitter <TransactionCategoryState> emit) async {
      emit(TransactionCategoryLoading());
      try {
        final transactions = await service.loadTransactions(event.category);
        emit(TransactionCategoryLoaded(transaction: transactions));
      } catch (e) {
        emit(TransactionCategoryError(message: e.toString()));
      }
  }  
}