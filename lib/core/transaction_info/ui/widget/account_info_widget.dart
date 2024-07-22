import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/material.dart';

class AccountInfoWidget extends StatelessWidget {
  final Transaction transaction;
  const AccountInfoWidget({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                'assets/images/${transaction.account.icon}.png',
                height: 40,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            transaction.account.title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    );
  }
}