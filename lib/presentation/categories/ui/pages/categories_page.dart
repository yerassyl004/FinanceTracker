import 'package:finance_app/presentation/categories/ui/widget/category_grid_item.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final CreateTransactionData data;
  final bool isExpense;
  final Function(Category) onCategorySelected;
  const CategoriesPage(
      {super.key, required this.onCategorySelected, required this.isExpense, required this.data});

  List<Category> getList() {
    if (isExpense) {
      return data.expenseCategories ?? [];
    } else {
      return data.incomeCategories ?? [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                children: getList().map((category) {
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
