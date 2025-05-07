import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/categories/ui/widget/category_grid_item.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r))),
      padding: EdgeInsets.all(16.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.categories,
                style: AppTextStyle.bold24()
              ),
              16.ph,
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
