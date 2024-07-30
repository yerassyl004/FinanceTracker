import 'package:finance_app/core/accounts_page/service/account_edit_service.dart';
import 'package:finance_app/core/accounts_page/ui/widget/pop_up_menu_text.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/core/models/account.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  final VoidCallback accountDeleted;
  const AccountWidget({super.key, required this.account, required this.accountDeleted});

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
            width: 50,
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
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
              PopupMenuButton<int>(
                color: Colors.white,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: PopUpMenuText(title: 'Edit'),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                     child: PopUpMenuText(title: 'Delete'),
                  ),
                ],
                icon: const Icon(Icons.more_horiz, color: Colors.transparent),
                offset: const Offset(0, 45),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    AccountEditService service = AccountEditService();
    switch (item) {
      case 0:
        print('Edit tapped');
        break;
      case 1:
        service.deleteAccount(account);
        accountDeleted();
        break;
    }
  }
}
