import 'package:finance_app/core/categories/service/category_service.dart';
import 'package:finance_app/core/categories/ui/widget/category_grid_item.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  final bool isExpense;
  final Function(Category) onCategorySelected;
  const CategoriesPage(
      {super.key, required this.onCategorySelected, required this.isExpense});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<Category> categories = [];

  final CategoryService _categoryService = CategoryService();

  @override
  void initState() {
    widget.isExpense ? 
    categories = _categoryService.getDefaultExpenseCategories() : 
    categories = _categoryService.getDefaultIncomeCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      widget.onCategorySelected(category);
                    },
                    child: SizedBox(
                      width: (MediaQuery.of(context).size.width - 64) / 3,
                      child: CategoryGridItem(category: category),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
