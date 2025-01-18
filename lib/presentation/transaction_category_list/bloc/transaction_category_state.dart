import 'package:equatable/equatable.dart';
import 'package:finance_app/domain/models/transaction.dart';

abstract class TransactionCategoryState extends Equatable {
  const TransactionCategoryState();

  @override
  List<Object?> get props => [];
}

class TransactionCategoryError extends TransactionCategoryState {
  final String message;
  const TransactionCategoryError({required this.message});

  @override
  List<Object?> get props => [message];
}

class TransactionCategoryLoading extends TransactionCategoryState {}

class TransactionCategoryInitial extends TransactionCategoryState {}

class TransactionCategoryLoaded extends TransactionCategoryState {
  final List<Transaction> transaction;
  const TransactionCategoryLoaded({required this.transaction});

  @override
  List<Object?> get props => [transaction];
}