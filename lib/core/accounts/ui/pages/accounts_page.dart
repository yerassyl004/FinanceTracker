import 'package:finance_app/core/accounts/ui/widgets/account_item_widget.dart';
import 'package:finance_app/core/accounts/ui/widgets/add_account_button.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  AccountsPage({super.key});

  final List<Account> account = <Account>[
    Account(cash: 20000, icon: 'card', title: 'Card'),
    Account(cash: 30000, icon: 'food', title: 'Cash'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select an account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                ...account.map((acc) => AccountItemWidget(account: acc)),
                const SizedBox(height: 16),
                Center(
                  child: AddAccountButton(
                    onTap: () {
                      // Your onTap function here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
