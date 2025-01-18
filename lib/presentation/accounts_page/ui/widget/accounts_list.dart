import 'package:finance_app/presentation/accounts_page/ui/widget/account_widget.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:flutter/material.dart';

class AccountsList extends StatelessWidget {
  final VoidCallback updateList;
  final Function(Account) pushEditAccount;
  final Function(Account) deleteAccount;
  final List<Account> accounts;
  const AccountsList(
      {super.key,
      required this.accounts,
      required this.updateList,
      required this.pushEditAccount,
      required this.deleteAccount});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 16),
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return AccountWidget(
            account: accounts[index],
            accountDelete: deleteAccount,
            accountEdit: pushEditAccount,
          );
        });
  }
}
