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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          '₸$cash',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}