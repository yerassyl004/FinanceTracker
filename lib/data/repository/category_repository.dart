import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/domain/models/category.dart';

class CategoryRepository {
  final CategoryDao _categoryDao = CategoryDao();
  
  Future<void> deleteCategory(Category category) async {
    await _categoryDao.deleteCategory(category.id);
  }

  Future<List<Category>> loadExpenseCategoryData() async {
    final categoriesList = await _categoryDao.loadCategories(CategoryType.expense.value);

    if (categoriesList.isEmpty) {
      saveCategoryData(getDefaultExpenseCategories());
      return getDefaultExpenseCategories();
    } else {
      return categoriesList;
    }
  }

  Future<List<Category>> loadIncomeCategoryData() async {
    final categoriesList=  await _categoryDao.loadCategories(CategoryType.income.value);

    if (categoriesList.isEmpty) {
      saveCategoryData(getDefaultIncomeCategories());
      return getDefaultIncomeCategories();
    } else {
      return categoriesList;
    }
  }

  Future<void> saveCategoryData(List<Category> categories) async {
    await _categoryDao.insertCategories(categories);
  }
}