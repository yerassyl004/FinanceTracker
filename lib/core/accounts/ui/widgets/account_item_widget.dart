import 'package:finance_app/core/home/models/account.dart';
import 'package:flutter/material.dart';

class AccountItemWidget extends StatelessWidget {
  final Account account;
  const AccountItemWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
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
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            account.title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Spacer(),
          Text(
            account.cash.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.green),
          ),
        ],
      ),
    );
  }
}
