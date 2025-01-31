// ignore_for_file: void_checks

import 'dart:ffi';

import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/usecases.dart/delete_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_account_usecase.dart';
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
  // final AccountsRepository repository;
  final LoadAccountUseCase loadAccountUseCase;
  final DeleteAccountUsecase deleteAccountUseCase;

  AccountsBloc(this.loadAccountUseCase, this.deleteAccountUseCase)
      : super(const AccountsState.initial()) {
    on<LoadAccounts>(_onLoadAccounts);
    on<DeleteAccounts>(_delete);
  }

  Future<void> _delete(
      DeleteAccounts event, Emitter<AccountsState> emit) async {
    final result = await deleteAccountUseCase.execute(event.account.id);
    result.fold((failure) {
      emit(AccountsState.error(failure.message));
    }, (deleted) {
      add(AccountsEvent.loadAccounts());
    });
  }

  Future<void> _onLoadAccounts(
      LoadAccounts event, Emitter<AccountsState> emit) async {
    emit(const AccountsState.loading());

    try {
      final accounts = await loadAccountUseCase.execute(Void);
      accounts.fold((failure) {
        emit(AccountsState.error(failure.message));
      }, (accounts) {
        if (accounts.isEmpty) {

        }
        emit(AccountsState.loaded(accounts));
      });
    } catch (e) {
      emit(AccountsState.error(e.toString()));
    }
  }
}
