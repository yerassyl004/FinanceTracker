// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:finance_app/core/categories/service/category_service.dart';
import 'package:finance_app/core/categories_page/bloc/category_event.dart';
import 'package:finance_app/core/categories_page/bloc/category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryService categoryService;

  CategoryBloc({required this.categoryService}) : super(CategoriesInitial()) {
    on<LoadExpenseCategoryData>(_onLoadExpenseDCategories);
  }

  Future<void> _onLoadExpenseDCategories(
    LoadExpenseCategoryData event, Emitter<CategoryState> state) async {
      emit(CategoriesLoading());
      try {
        final categories = await categoryService.loadExpenseCategoryData();
        emit(CategoriesLoaded(categories: categories));
      } catch (e) {
        emit(CategoriesError(e.toString()));
      }
  }
}