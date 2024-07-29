import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountItemWidget extends StatelessWidget {
  final Account account;
  const AccountItemWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
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
                height: 50,
                width: 50,
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
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: account.cash > 0 ? Colors.green : Colors.orange),
          ),
        ],
      ),
    );
  }
}
