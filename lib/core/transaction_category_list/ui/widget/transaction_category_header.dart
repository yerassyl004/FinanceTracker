import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class TransactionCategoryHeader extends StatelessWidget {
  final Category category;
  final double totalCash;
  const TransactionCategoryHeader({super.key, required this.category, required this.totalCash});

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
            offset: const Offset(0, 4),
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
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Text(
            category.title,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const Text(
            'July 2024',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            '₸${totalCash.toStringAsFixed(2)}',
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
