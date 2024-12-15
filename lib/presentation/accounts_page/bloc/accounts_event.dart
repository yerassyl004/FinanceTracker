import 'package:equatable/equatable.dart';

abstract class AccountsEvent extends Equatable {
  const AccountsEvent();

  @override
  List<Object?> get props => [];
}

class LoadAccounts extends AccountsEvent {

  const LoadAccounts();

  @override
  List<Object?> get props => [];
}