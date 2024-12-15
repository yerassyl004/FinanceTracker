import 'package:finance_app/presentation/accounts_modal/service/account_service.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_event.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  final AccountService service;

  AccountsBloc({required this.service}) : super(AccountInitial()) {
    on<LoadAccounts>(_onLoadAccounts);
  }

  Future<void> _onLoadAccounts(
      LoadAccounts event, Emitter<AccountsState> emit) async {
    emit(AccountLoading());
    try {
      final transactions = await service.loadAccountData();
      emit(AccountsLoaded(accounts: transactions));
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }
}