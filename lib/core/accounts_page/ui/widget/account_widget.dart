import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  Color getColor() {
    if (account.cash > 0) {
      return Colors.green;
    } else if (account.cash == 0) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/images/${account.icon}.png',
            height: 50,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                account.title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text(
                    'Balance:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '₸${account.cash.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: getColor()),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
