import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/usecases.dart/create_transaction_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/update_transaction_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_transaction_event.dart';
part 'create_transaction_state.dart';
part 'create_transaction_bloc.freezed.dart';

@freezed
class CreateTransactionData with _$CreateTransactionData {
  const CreateTransactionData._();

  const factory CreateTransactionData({
    @Default(TypeSpending.expense) TypeSpending selectedType,
    @Default(null) Category? category,
    @Default(null) Account? fromAccount,
    @Default(null) Account? toAccount,
    @Default(null) Transaction? transaction,
    @Default([]) List<Account>? accounts,
    @Default([]) List<Account>? destinationAccounts,
    @Default([]) List<Category>? expenseCategories,
    @Default([]) List<Category>? incomeCategories,
    String? errorMessage,
  }) = _CreateTransactionData;

  const factory CreateTransactionData.init({
    @Default(TypeSpending.expense) TypeSpending selectedType,
    @Default(null) Category? category,
    @Default(null) Account? fromAccount,
    @Default(null) Account? toAccount,
    @Default(null) Transaction? transaction,
    @Default([]) List<Account>? accounts,
    @Default([]) List<Account>? destinationAccounts,
    @Default([]) List<Category>? expenseCategories,
    @Default([]) List<Category>? incomeCategories,
    String? errorMessage,
  }) = _InitTransactionData;
}

class CreateTransactionBloc
    extends Bloc<CreateTransactionEvent, CreateTransactionState> {
  final UpdateTransactionUsecase updateTransactionUsecase;
  final CreateTransactionUsecase createTransactionUsecase;
  final LoadAccountUseCase loadAccountUseCase;
  final LoadCategoryUsecase loadCategoryUsecase;
  final Transaction? transaction;

  CreateTransactionBloc(
      this.updateTransactionUsecase,
      this.createTransactionUsecase,
      this.loadAccountUseCase,
      this.loadCategoryUsecase,
      this.transaction)
      : super(const CreateTransactionState.initial(
            CreateTransactionData.init())) {
    on<InitialTransactionEvent>(_init);
    on<EditTransactionEvent>(_edit);
    on<SaveTransactionEvent>(_save);
  }

  Future<void> _init(InitialTransactionEvent event,
      Emitter<CreateTransactionState> emit) async {
    List<Account> accountList = await _onLoadAccounts();
    List<Category> expenseCategoryList =
        await _onLoadCategory(CategoryType.expense);
    List<Category> incomeCategoryList =
        await _onLoadCategory(CategoryType.income);
    debugPrint('transaction:::: ${transaction?.toJson()}');
    final newData = event.data.copyWith(
        accounts: accountList,
        fromAccount: transaction?.account,
        toAccount: transaction?.destination,
        category: transaction?.category,
        expenseCategories: expenseCategoryList,
        incomeCategories: incomeCategoryList,
        transaction: transaction,
        selectedType: transaction?.typeSpending ?? TypeSpending.expense);
    add(CreateTransactionEvent.edit(data: newData));
  }

  Future<void> _edit(
      EditTransactionEvent event, Emitter<CreateTransactionState> emit) async {
    emit(CreateTransactionState.editing(event.data));
  }

  Future<void> _save(
      SaveTransactionEvent event, Emitter<CreateTransactionState> emit) async {
    if (event.data.transaction?.account != null &&
        (event.data.transaction?.category != null ||
            event.data.transaction?.destination != null)) {
      final transactionData = event.data.transaction!.copyWith(
        account: event.data.fromAccount,
        destination: event.data.toAccount,
        category: event.data.category,
        typeSpending: event.data.selectedType,
      );
      emit(CreateTransactionState.loading(event.data));
      if (transaction == null) {
        final result = await createTransactionUsecase.execute(transactionData);
        result.fold(
            (failure) => emit(CreateTransactionState.editing(
                event.data.copyWith(errorMessage: 'Error'))),
            (success) => emit(CreateTransactionState.success(event.data)));
      } else {
        final result = await updateTransactionUsecase.execute(transactionData);
        result.fold(
            (failure) => emit(CreateTransactionState.editing(
                event.data.copyWith(errorMessage: 'Error'))),
            (success) => emit(CreateTransactionState.success(event.data)));
        updateTransactionUsecase.execute(transactionData);
      }
    } else {
      emit(CreateTransactionState.editing(
          event.data.copyWith(errorMessage: 'Empty')));
    }
  }

  Future<List<Account>> _onLoadAccounts() async {
    final result = await loadAccountUseCase.execute(null);
    return result.fold(
      (failure) => [],
      (accounts) => accounts,
    );
  }

  Future<List<Category>> _onLoadCategory(CategoryType type) async {
    final result = await loadCategoryUsecase.execute(type);
    return result.fold((failure) => [], (categories) => categories);
  }
}
