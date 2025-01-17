// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:finance_app/data/models/category.dart';
import 'package:finance_app/presentation/categories_page/repository/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_bloc.freezed.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.loadAccounts() = LoadCategory;
  const factory CategoryEvent.deleteAccount(Category account) = DeleteCategory;
}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryInitial;
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.loaded(List<Category> income, List<Category> expense) = CategoryLoaded;
  const factory CategoryState.error(String message) = CategoryError;
}

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository repository;

  CategoryBloc({required this.repository}) : super(const CategoryState.initial()) {
    on<LoadCategory>(_onLoadAccounts);
    on<DeleteCategory>(_onDeleteAccount);
  }

  Future<void> _onLoadAccounts(
      LoadCategory event, Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());
    try {
      final incomeCategories = await repository.loadIncomeCategoryData();
      final expenseCategories = await repository.loadExpenseCategoryData();
      emit(CategoryState.loaded(incomeCategories, expenseCategories));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  Future<void> _onDeleteAccount(
      DeleteCategory event, Emitter<CategoryState> emit) async {
    try {
      await repository.deleteAccount(event.account);
      add(const CategoryEvent.loadAccounts());
    } catch (e) {
      emit(CategoryState.error('Failed to delete account: ${e.toString()}'));
    }
  }
}
