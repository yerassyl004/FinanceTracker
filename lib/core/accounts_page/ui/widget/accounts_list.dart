import 'package:finance_app/core/accounts_page/ui/widget/account_widget.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountsList extends StatelessWidget {
  final List<Account> accounts;
  const AccountsList({super.key, required this.accounts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 16),
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return AccountWidget(account: accounts[index]);
        });
  }
}
