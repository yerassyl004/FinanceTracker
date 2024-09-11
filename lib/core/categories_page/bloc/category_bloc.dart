// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:finance_app/core/categories/service/category_service.dart';
import 'package:finance_app/core/categories_page/bloc/category_event.dart';
import 'package:finance_app/core/categories_page/bloc/category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryService categoryService;

  CategoryBloc({required this.categoryService}) : super(CategoriesInitial()) {
    on<LoadCategoryData>(_onLoadExpenseCategories);
  }

  Future<void> _onLoadExpenseCategories(
    LoadCategoryData event, Emitter<CategoryState> state) async {
      emit(CategoriesLoading());
      try {
        final expenseCategories = await categoryService.loadExpenseCategoryData();
        final incomeCategories = await categoryService.loadIncomeCategoryData();
        emit(CategoriesLoaded(expenseCategories: expenseCategories, incomeCategories: incomeCategories));
      } catch (e) {
        emit(CategoriesError(e.toString()));
      }
  }
}