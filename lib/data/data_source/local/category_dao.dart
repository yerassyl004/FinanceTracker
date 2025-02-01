import 'package:finance_app/data/data_source/local/database_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:finance_app/domain/models/category.dart';

class CategoryDao {
  final dbHelper = DatabaseHelper.instance;

  Future<void> insertCategories(List<Category> categories) async {
    final db = await dbHelper.database;

    // Convert the list of categories to a list of maps
    final categoryMaps = categories.map((category) => category.toJson()).toList();

    // Insert each category in the list
    final batch = db.batch();
    for (var categoryMap in categoryMaps) {
      batch.insert(
        'categories',
        categoryMap,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit(noResult: true);
  }

  /// Insert a new category
  Future<int> insertCategory(Category category) async {
    final db = await dbHelper.database;
    return await db.insert(
      'categories',
      category.toJson(), // Handle conflicts
    );
  }

  /// Load categories based on type (expense or income)
  Future<List<Category>> loadCategories(int type) async {
    final db = await DatabaseHelper.instance.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'categories',
      where: 'type = ?',
      whereArgs: [type],
    );

    if (maps.isEmpty) {
      return [];
    }

    return List.generate(maps.length, (i) {
      return Category.fromJson(maps[i]);
    });
  }

  /// Delete a category by ID
  Future<int> deleteCategory(String id) async {
    final db = await dbHelper.database;
    return await db.delete(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Update a category
  Future<int> updateCategory(Category category) async {
    final db = await dbHelper.database;
    return await db.update(
      'categories',
      category.toJson(),
      where: 'id = ?',
      whereArgs: [category.id],
    );
  }

  /// Load a category by its ID
  Future<Category?> loadCategoryById(String id) async {
    final db = await dbHelper.database;

    final result = await db.query(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isNotEmpty) {
      return Category.fromJson(result.first);
    }
    return null;
  }
}
