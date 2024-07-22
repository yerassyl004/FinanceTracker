import 'package:finance_app/core/categories/ui/widget/category_grid_item.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final Function(Category) onCategorySelected;
  CategoriesPage({super.key, required this.onCategorySelected});

  final List<Category> categories = [
    Category(title: 'Food', icon: 'foods_icon'),
    Category(title: 'Transport', icon: 'car_icon'),
    Category(title: 'Clothes', icon: 'clothes_icon'),
    Category(title: 'Shopping', icon: 'shopping_icon'),
    Category(title: 'Home', icon: 'home_icon'),
    Category(title: 'Health', icon: 'health_icon'),
    Category(title: 'Bills', icon: 'bills_icon'),
    Category(title: 'Education', icon: 'education_icon'),
    Category(title: 'Beauty', icon: 'beauty_icon'),
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
