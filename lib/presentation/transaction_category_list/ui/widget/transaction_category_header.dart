import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class TransactionCategoryHeader extends StatelessWidget {
  final Category category;
  final double totalCash;
  final String date;
  const TransactionCategoryHeader({super.key, required this.category, required this.totalCash, required this.date});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return Container(
      padding: EdgeInsets.only(top: padding.top, left: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorManager.black,
                ),
              ),
            ],
          ),
          Text(
            category.title,
            style: AppTextStyle.bold30()
          ),
          Text(
            date,
            style: AppTextStyle.body16Medium()
          ),
          Text(
            '₸${totalCash.toStringAsFixed(2)}',
          ),
          8.ph,
        ],
      ),
    );
  }
}
