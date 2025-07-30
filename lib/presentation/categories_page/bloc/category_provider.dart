import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/usecases.dart/category/delete_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/load_category_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_provider.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryInitial;
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.loaded(
      List<Category> income, List<Category> expense) = CategoryLoaded;
  const factory CategoryState.error(String message) = CategoryError;
}

class CategoryNotifier extends StateNotifier<CategoryState> {
  final LoadCategoryUsecase _loadCategory;
  final DeleteCategoryUsecase _deleteCategory;

  CategoryNotifier(this._loadCategory, this._deleteCategory)
      : super(const CategoryState.initial()) {
    loadCategories();
  }

  Future<void> deleteCategory(Category category) async {
    final result = await _deleteCategory.execute(category.id);
    result.fold((failure) {
      state = CategoryState.error('Failed to delete category: ${failure.message}');
    }, (success) {
      loadCategories();
    });
  }

  Future<void> loadCategories() async {
    state = const CategoryState.loading();

    try {
      List<Category> incomeCategories = [];
      List<Category> expenseCategories = [];

      final fetchExpence =
          await _loadCategory.execute(CategoryType.expense);
      final fetchIncome =
          await _loadCategory.execute(CategoryType.income);

      fetchIncome.fold((failure) {
        state = CategoryState.error(failure.message);
      }, (categories) {
        incomeCategories = categories;
      });
      fetchExpence.fold((failure) {
        state = CategoryState.error(failure.message);
      }, (categories) {
        expenseCategories = categories;
      });
      state = CategoryState.loaded(incomeCategories, expenseCategories);
    } catch (e) {
      state = CategoryState.error(e.toString());
    }
  }
}

final categoryProvider = StateNotifierProvider<CategoryNotifier, CategoryState>((ref) {
  return CategoryNotifier(getIt(), getIt());
});
