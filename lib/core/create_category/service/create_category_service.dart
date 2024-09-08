import 'dart:convert';

import 'package:finance_app/core/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCategoryService {
  Future<void> createExpenseCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList = prefs.getStringList('expenseCategories') ?? [];

    categoryList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    categoryList.add(jsonEncode(category.toJson()));
    await prefs.setStringList('expenseCategories', categoryList);
  }

  void updatedCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList =
        prefs.getStringList('expenseCategories') ?? [];

    var categories = categoryList.map((jsonString) {
      return Category.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < categories.length; i++) {
      if (categories[i].id == category.id) {
        categories[i] = category;
        break;
      }
    }

    final updatedCategoryList = categories.map((acc) {
      return jsonEncode(acc.toJson());
    }).toList();

    await prefs.setStringList('expenseCategories', updatedCategoryList);
  }


  Future<void> createIncomeCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList = prefs.getStringList('incomeCategories') ?? [];

    categoryList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    categoryList.add(jsonEncode(category.toJson()));
    await prefs.setStringList('incomeCategories', categoryList);
  }

  void updatedIncomeCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList =
        prefs.getStringList('incomeCategories') ?? [];

    var categories = categoryList.map((jsonString) {
      return Category.fromJson(jsonDecode(jsonString));
    }).toList();

    for (var i = 0; i < categories.length; i++) {
      if (categories[i].id == category.id) {
        categories[i] = category;
        break;
      }
    }

    final updatedCategoryList = categories.map((acc) {
      return jsonEncode(acc.toJson());
    }).toList();

    await prefs.setStringList('incomeCategories', updatedCategoryList);
  }
}
