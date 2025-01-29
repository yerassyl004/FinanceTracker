// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/usecases.dart/delete_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_category_usecase.dart';
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
  const factory CategoryState.loaded(
      List<Category> income, List<Category> expense) = CategoryLoaded;
  const factory CategoryState.error(String message) = CategoryError;
}

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  // final CategoryRepository repository;
  final LoadCategoryUsecase loadCategoryUsecase;
  final DeleteCategoryUsecase deleteCategoryUsecase;

  CategoryBloc(this.loadCategoryUsecase, this.deleteCategoryUsecase)
      : super(const CategoryState.initial()) {
    on<LoadCategory>(_onLoadAccounts);
    on<DeleteCategory>(_onDeleteAccount);
  }

  Future<void> _onLoadAccounts(
      LoadCategory event, Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());
    try {
      List<Category> incomeCategories = [];
      List<Category> expenseCategories = [];

      final fetchExpence =
          await loadCategoryUsecase.execute(CategoryType.expense);
      final fetchIncome =
          await loadCategoryUsecase.execute(CategoryType.income);

      fetchIncome.fold((failure) {
        emit(CategoryState.error(failure.message));
      }, (categories) {
        incomeCategories = categories;
      });
      fetchExpence.fold((failure) {
        emit(CategoryState.error(failure.message));
      }, (categories) {
        expenseCategories = categories;
      });
      emit(CategoryState.loaded(incomeCategories, expenseCategories));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  Future<void> _onDeleteAccount(
      DeleteCategory event, Emitter<CategoryState> emit) async {
    final result = await deleteCategoryUsecase.execute(event.account.id);
    result.fold((failure) {
      emit(CategoryState.error('Failed to delete account: ${failure.message}'));
    }, (success) {
      add(const CategoryEvent.loadAccounts());
    });
  }
}
