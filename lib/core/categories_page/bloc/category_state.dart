import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/category.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class CategoriesInitial extends CategoryState {}

class CategoriesLoading extends CategoryState {}

class CategoriesError extends CategoryState {
  final String message;
  const CategoriesError(this.message);
}

class CategoriesLoaded extends CategoryState {
  final List<Category> expenseCategories;
  final List<Category> incomeCategories;
  const CategoriesLoaded({required this.expenseCategories, required this.incomeCategories});

  @override
  List<Object?> get props => [expenseCategories, incomeCategories];
}