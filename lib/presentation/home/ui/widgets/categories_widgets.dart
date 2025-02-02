import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class CategoriesWidgets extends StatelessWidget {
  final String category;
  final String cash;
  final Color color;
  const CategoriesWidgets({
    super.key,
    required this.category,
    required this.cash,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          category,
          style: AppTextStyle.body16Medium(),
          textAlign: TextAlign.center,
        ),
        Text(
          '₸$cash',
          style: AppTextStyle.body15Medium().copyWith(color: color),
          maxLines: 1,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}