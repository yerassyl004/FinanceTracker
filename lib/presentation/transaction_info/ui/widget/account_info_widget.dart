import 'package:finance_app/data/models/account.dart';
import 'package:flutter/material.dart';

class AccountInfoWidget extends StatelessWidget {
  final Account account;
  const AccountInfoWidget({super.key, required this.account});

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
                'assets/images/${account.icon}.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            account.title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    );
  }
}