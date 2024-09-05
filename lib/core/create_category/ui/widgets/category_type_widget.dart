import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTypeWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const CategoryTypeWidget({
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
          const Icon(CupertinoIcons.check_mark_circled_solid) :
          const SizedBox(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}