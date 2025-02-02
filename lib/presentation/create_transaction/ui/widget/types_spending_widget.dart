import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypesSpendingWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const TypesSpendingWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          isSelected ?
          Icon(CupertinoIcons.check_mark_circled_solid) :
          SizedBox(),
          Text(
            title,
            style: AppTextStyle.body16Medium()
          )
        ],
      ),
    );
  }
}