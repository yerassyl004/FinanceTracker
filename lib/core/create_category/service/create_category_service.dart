import 'dart:convert';

import 'package:finance_app/core/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCategoryService {
  Future<void> createExpenseCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList = prefs.getStringList('expenseCategory') ?? [];

    categoryList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    if (categoryList.length <= 12){
      categoryList.add(jsonEncode(category.toJson()));
    }
    await prefs.setStringList('expenseCategory', categoryList);
  }

  void updatedCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList =
        prefs.getStringList('expenseCategory') ?? [];

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

    await prefs.setStringList('expenseCategory', updatedCategoryList);
  }

  Future<void> createIncomeCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList = prefs.getStringList('incomeCategory') ?? [];

    categoryList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    if (categoryList.length <= 12){
      categoryList.add(jsonEncode(category.toJson()));
    }    
    await prefs.setStringList('incomeCategory', categoryList);
  }

  void updatedIncomeCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList =
        prefs.getStringList('incomeCategory') ?? [];

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

    await prefs.setStringList('incomeCategory', updatedCategoryList);
  }

  List<String> getCategoryImages(CategoryType type) {
    final List<String> imageExpenseAssets = [
    'foods_icon',
    'car_icon',
    'clothes_icon',
    'shopping_icon',
    'home_icon',
    'health_icon'
    'bills_icon',
    'education_icon',
    'beauty_icon',
  ];

  final List<String> imageIncomeAssets = [
    'salary_icon',
    'awards_icon',
    'rental_icon',
    'sale_icon',
    'grants_icon',
    'coupons_icon'
    'refunds_icon',
    'lottery_icon',
  ];
    return type == CategoryType.expense ? imageExpenseAssets : imageIncomeAssets;
  }
}
