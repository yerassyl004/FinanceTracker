import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Adjust the import path as needed

class CategoryGridItem extends StatelessWidget {
  final Category category;
  const CategoryGridItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${category.icon}.png',
              height: 40.h,
            ),
            8.ph,
            Text(
              category.title,
              style: AppTextStyle.body16Medium(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
