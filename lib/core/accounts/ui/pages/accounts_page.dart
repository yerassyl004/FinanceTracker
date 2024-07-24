import 'package:finance_app/core/accounts/service/account_service.dart';
import 'package:finance_app/core/accounts/ui/widgets/account_item_widget.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatefulWidget {
  final Function(Account) onTapAccount;
  const AccountsPage({super.key, required this.onTapAccount});

  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  List<Account> account = [];

  final AccountService _accountService = AccountService();

  @override
  void initState() {
    super.initState();
    _loadAccountData();
  }

  Future<void> _loadAccountData() async {
    account = await _accountService.loadAccountData();
    setState(() {});
  }

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
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                ...account.map((account) => GestureDetector(
                      onTap: () {
                        widget.onTapAccount(account);
                      },
                      child: AccountItemWidget(account: account),
                    )),
                // const SizedBox(height: 16),
                // Center(
                //   child: AddAccountButton(
                //     onTap: () {
                //       // Your onTap function here
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}