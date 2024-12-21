import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/data/models/category.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:finance_app/presentation/create_transaction/repositories/create_transaction_repository.dart';
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
  final CreateTransactionRepository repository;
  final Transaction? transaction;

  CreateTransactionBloc({required this.repository, this.transaction})
      : super(const CreateTransactionState.initial(
            CreateTransactionData.init())) {
    on<InitialTransactionEvent>(_init);
    on<EditTransactionEvent>(_edit);
    on<SaveTransactionEvent>(_save);
  }

  Future<void> _init(InitialTransactionEvent event,
      Emitter<CreateTransactionState> emit) async {
    final accountList = await repository.loadAccountData();
    final expenseCategoryList = await repository.loadExpenseCategoryData();
    final incomeCategoryList = await repository.loadIncomeCategoryData();

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
      if (transaction == null) {
        repository.saveTransaction(event.data.transaction!);
      } else {
        repository.updateTransactions(event.data.transaction!);
      }
      emit(CreateTransactionState.success(event.data));
    } else {
      emit(CreateTransactionState.editing(
          event.data.copyWith(errorMessage: 'Empty')));
    }
  }
}
