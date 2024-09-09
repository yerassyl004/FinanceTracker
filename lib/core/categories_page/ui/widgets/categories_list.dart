import 'package:finance_app/core/categories_page/ui/widgets/categories_widget.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final VoidCallback updateList;
  final Function(Category) pushEditCategory;
  final List<Category> expenseCategories;
  final List<Category> incomeCategories;

  const CategoriesList({
    super.key,
    required this.expenseCategories,
    required this.incomeCategories,
    required this.pushEditCategory,
    required this.updateList,
  });

  @override
  Widget build(BuildContext context) {
    int totalCount = expenseCategories.length + incomeCategories.length + 2;

    return ListView.builder(
      padding: const EdgeInsets.only(top: 16),
      itemCount: totalCount,
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildHeader('Expense Categories');
        }
        else if (index > 0 && index <= expenseCategories.length) {
          return CategoriesWidget(
            category: expenseCategories[index - 1],
            categoryDeleted: updateList,
            categoryEdit: pushEditCategory,
          );
        }
        else if (index == expenseCategories.length + 1) {
          return _buildHeader('Income Categories');
        }
        else {
          int incomeIndex = index - expenseCategories.length - 2;
          return CategoriesWidget(
            category: incomeCategories[incomeIndex],
            categoryDeleted: updateList,
            categoryEdit: pushEditCategory,
          );
        }
      },
    );
  }

  Widget _buildHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 6),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  height: 2,
                  color: Color.fromRGBO(156, 182, 201, 1),
                ),
              ),
      ],
    );
  }
}
