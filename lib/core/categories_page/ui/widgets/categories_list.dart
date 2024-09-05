import 'package:finance_app/core/categories_page/ui/widgets/categories_widget.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final VoidCallback updateList;
  final Function(Category) pushEditCategory;
  final List<Category> categories;
  const CategoriesList({
    super.key,
    required this.categories,
    required this.pushEditCategory,
    required this.updateList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesWidget(
            category: categories[index],
            categoryDeleted: updateList,
            categoryEdit: pushEditCategory,
          );
        });
  }
}