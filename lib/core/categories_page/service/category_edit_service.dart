import 'dart:convert';

import 'package:finance_app/core/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryEditService {
  
  Future<void> deleteAccount(Category account) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('expenseCategories') ?? [];

    accountsList
        .map((jsonString) => Category.fromJson(jsonDecode(jsonString)))
        .toList();
    accountsList.remove(jsonEncode(account.toJson()));
    await prefs.setStringList('expenseCategories', accountsList);
  }
}