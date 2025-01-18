import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/data/repository/accounts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounts_bloc.freezed.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.loadAccounts() = LoadAccounts;
  const factory AccountsEvent.deleteAccount(Account account) = DeleteAccounts;
}

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState.initial() = AccountInitial;
  const factory AccountsState.loading() = AccountLoading;
  const factory AccountsState.loaded(List<Account> accounts) = AccountsLoaded;
  const factory AccountsState.error(String message) = AccountError;
}

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  final AccountsRepository repository;

  AccountsBloc({required this.repository}) : super(const AccountsState.initial()) {
    on<LoadAccounts>(_onLoadAccounts);
    on<DeleteAccounts>(_delete);
  }

  Future<void> _delete(DeleteAccounts event, Emitter<AccountsState> emit) async {
    repository.deleteAccount(event.account);
    add(AccountsEvent.loadAccounts());
  }

  Future<void> _onLoadAccounts(
      LoadAccounts event, Emitter<AccountsState> emit) async {
    emit(const AccountsState.loading());
    try {
      final accounts = await repository.loadAccountData();
      emit(AccountsState.loaded(accounts));
    } catch (e) {
      emit(AccountsState.error(e.toString()));
    }
  }
}
