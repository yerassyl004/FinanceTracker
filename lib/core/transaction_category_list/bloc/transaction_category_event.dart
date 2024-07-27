import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/category.dart';

abstract class TransactionCategoryEvent extends Equatable {
  const TransactionCategoryEvent();

  @override
  List<Object> get props => [];
}

class LoadTransactionsCategory extends TransactionCategoryEvent {
  final Category category;

  const LoadTransactionsCategory({required this.category});

  @override
  List<Object> get props => [category];
}