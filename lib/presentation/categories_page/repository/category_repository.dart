import 'dart:convert';

import 'package:finance_app/data/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryRepository {
  Future<void> deleteAccount(Category category) async {
    String key = category.type == CategoryType.expense ? 
    'expenseCategory' :
    'incomeCategory';
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoryList = prefs.getStringList(key) ?? [];

    categoryList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    categoryList.remove(jsonEncode(category.toJson()));
    await prefs.setStringList(key, categoryList);
  }

  List<Category> _getDefaultExpenseCategories() {
    return [
      Category(title: 'Food', icon: 'foods_icon', type: CategoryType.expense),
      Category(title: 'Transport', icon: 'car_icon', type: CategoryType.expense),
      Category(title: 'Clothes', icon: 'clothes_icon', type: CategoryType.expense),
      Category(title: 'Shopping', icon: 'shopping_icon', type: CategoryType.expense),
      Category(title: 'Home', icon: 'home_icon', type: CategoryType.expense),
      Category(title: 'Health', icon: 'health_icon', type: CategoryType.expense),
      Category(title: 'Bills', icon: 'bills_icon', type: CategoryType.expense),
      Category(title: 'Education', icon: 'education_icon', type: CategoryType.expense),
      Category(title: 'Beauty', icon: 'beauty_icon', type: CategoryType.expense),
    ];
  }

  List<Category> _getDefaultIncomeCategories() {
    return [
      Category(title: 'Salary', icon: 'salary_icon', type: CategoryType.income),
      Category(title: 'Awards', icon: 'awards_icon', type: CategoryType.income),
      Category(title: 'Rental', icon: 'rental_icon', type: CategoryType.income),
      Category(title: 'Sale', icon: 'sale_icon', type: CategoryType.income),
      Category(title: 'Grants', icon: 'grants_icon', type: CategoryType.income),
      Category(title: 'Coupons', icon: 'coupons_icon', type: CategoryType.income),
      Category(title: 'Refunds', icon: 'refunds_icon', type: CategoryType.income),
      Category(title: 'Lottery', icon: 'lottery_icon', type: CategoryType.income)
    ];
  }

  Future<List<Category>> loadExpenseCategoryData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoriesList = prefs.getStringList('expenseCategory') ?? [];

    if (categoriesList.isEmpty) {
      saveExpenseCategoryData(_getDefaultExpenseCategories());
      return _getDefaultExpenseCategories();
    } else {
      return categoriesList
          .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }

  Future<List<Category>> loadIncomeCategoryData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> categoriesList = prefs.getStringList('incomeCategory') ?? [];

    if (categoriesList.isEmpty) {
      saveIncomeCategoryData(_getDefaultIncomeCategories());
      return _getDefaultIncomeCategories();
    } else {
      return categoriesList
          .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }

  Future<void> saveExpenseCategoryData(List<Category> categories) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        categories.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('expenseCategory', accountsList);
  }

  Future<void> saveIncomeCategoryData(List<Category> categories) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        categories.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('incomeCategory', accountsList);
  }
}