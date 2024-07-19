import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypesSpendingWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  const TypesSpendingWidget({
    super.key,
    required this.title,
    required this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}