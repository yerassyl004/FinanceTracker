import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/account.dart';

abstract class AccountsState extends Equatable {
  const AccountsState();

  @override
  List<Object?> get props => [];
}

class AccountInitial extends AccountsState {}

class AccountError extends AccountsState {
  final String message;

  const AccountError(this.message);

  @override
  List<Object> get props => [message];
}

class AccountLoading extends AccountsState {}

class AccountsLoaded extends AccountsState {
  final List<Account> accounts;

  const AccountsLoaded({required this.accounts});

  @override
  List<Object?> get props => [accounts];
}