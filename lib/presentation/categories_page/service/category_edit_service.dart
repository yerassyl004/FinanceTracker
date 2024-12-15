import 'dart:convert';

import 'package:finance_app/data/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryEditService {
  
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
}