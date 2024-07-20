import 'package:finance_app/core/categories/ui/widget/category_grid_item.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final Function(Category) onCategorySelected;
  const CategoriesPage({super.key, required this.onCategorySelected});

  final List<Category> categories = const [
    Category(title: 'Food', icon: 'card'),
    Category(title: 'Transport', icon: 'card'),
    Category(title: 'Shopping', icon: 'card'),
    Category(title: 'Home', icon: 'card'),
    Category(title: 'Health', icon: 'card'),
    Category(title: 'Bills', icon: 'food'),
    Category(title: 'Entertainment', icon: 'food'),
  ];

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
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
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
                      onCategorySelected(category);
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
