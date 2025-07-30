import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/usecases.dart/account/load_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/account/delete_account_usecase.dart';
import 'package:finance_app/app/di.dart';

part 'accounts_provider.freezed.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState.initial() = _Initial;
  const factory AccountsState.loading() = _Loading;
  const factory AccountsState.loaded(List<Account> accounts) = _Loaded;
  const factory AccountsState.error(String message) = _Error;
}

class AccountsNotifier extends StateNotifier<AccountsState> {
  final LoadAccountUseCase _loadAccounts;
  final DeleteAccountUsecase _deleteAccount;

  AccountsNotifier(this._loadAccounts, this._deleteAccount)
      : super(const AccountsState.initial()) {
    loadAccounts();
  }

  Future<void> loadAccounts() async {
    state = const AccountsState.loading();

    final result = await _loadAccounts.execute(Void);
    result.fold(
      (failure) => state = AccountsState.error(failure.message),
      (accounts) => state = AccountsState.loaded(accounts),
    );
  }

  Future<void> delete(Account account) async {
    final result = await _deleteAccount.execute(account.id);
    result.fold(
      (failure) => state = AccountsState.error(failure.message),
      (_) => loadAccounts(),
    );
  }
}

final _loadAccountsProvider =
    Provider<LoadAccountUseCase>((_) => LoadAccountUseCase(getIt()));
final _deleteAccountProvider =
    Provider<DeleteAccountUsecase>((_) => DeleteAccountUsecase(getIt()));

final accountsProvider =
    StateNotifierProvider<AccountsNotifier, AccountsState>((ref) {
  return AccountsNotifier(
    ref.watch(_loadAccountsProvider),
    ref.watch(_deleteAccountProvider),
  );
});
