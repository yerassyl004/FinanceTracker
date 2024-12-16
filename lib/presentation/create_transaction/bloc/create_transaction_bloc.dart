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
    @Default(null) Transaction? transaction,
    @Default([]) List<Account>? account,
    @Default([]) List<Account>? destinationAccount,
    @Default([]) List<Category>? expenseCategories,
    @Default([]) List<Category>? incomeCategories,
    String? errorMessage,
  }) = _CreateTransactionData;

  const factory CreateTransactionData.init({
    @Default(TypeSpending.expense) TypeSpending selectedType,
    @Default(null) Transaction? transaction,
    @Default([]) List<Account>? account,
    @Default([]) List<Account>? destinationAccount,
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
    on<ShowAccountListEvent>(_showAccountList);
    on<ShowCategoryListEvent>(_showCategoryList);
    on<SaveTransactionEvent>(_save);

    add(InitialTransactionEvent(data: CreateTransactionData.init()));
  }

  Future<void> _init(InitialTransactionEvent event,
      Emitter<CreateTransactionState> emit) async {
    print('intit');

    final accountList = await repository.loadAccountData();
    final expenseCategoryList = await repository.loadExpenseCategoryData();
    final incomeCategoryList = await repository.loadIncomeCategoryData();

    final newData = event.data.copyWith(
        account: accountList,
        expenseCategories: expenseCategoryList,
        incomeCategories: incomeCategoryList,
        transaction: transaction,
        selectedType: transaction?.typeSpending ?? TypeSpending.expense);
    add(
      CreateTransactionEvent.edit(
          data: newData)
    );
  }

  Future<void> _edit(
      EditTransactionEvent event, Emitter<CreateTransactionState> emit) async {
    print('edit');
    emit(CreateTransactionState.editing(event.data));
  }

  Future<void> _showAccountList(
      ShowAccountListEvent event, Emitter<CreateTransactionState> emit) async {
    // Add logic for showing account list
  }

  Future<void> _showCategoryList(
      ShowCategoryListEvent event, Emitter<CreateTransactionState> emit) async {
    // Add logic for showing category list
  }

  Future<void> _save(
      SaveTransactionEvent event, Emitter<CreateTransactionState> emit) async {
    // try {
    //   // await repository.sa(event.data.transaction!);
    //   emit(const CreateTransactionState.success());
    // } catch (e) {
    //   emit(CreateTransactionState.editing(event.data.copyWith(errorMessage: e.toString())));
    // }
  }
}
