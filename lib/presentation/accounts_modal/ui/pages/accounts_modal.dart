import 'package:finance_app/presentation/accounts_modal/ui/widgets/account_item_widget.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:flutter/material.dart';

class AddAccountsPage extends StatelessWidget {
  final Function(Account) onTapAccount;
  final List<Account> accountList;

  const AddAccountsPage({
    super.key,
    required this.onTapAccount,
    required this.accountList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select an account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: accountList.length,
                  itemBuilder: (context, index) {
                    final account = accountList[index];
                    return GestureDetector(
                      onTap: () => onTapAccount(account),
                      child: AccountItemWidget(account: account),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
