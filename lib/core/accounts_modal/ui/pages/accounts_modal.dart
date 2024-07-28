import 'package:finance_app/core/accounts_modal/service/account_service.dart';
import 'package:finance_app/core/accounts_modal/ui/widgets/account_item_widget.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class AddAccountsPage extends StatefulWidget {
  final Function(Account) onTapAccount;
  const AddAccountsPage({super.key, required this.onTapAccount});

  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AddAccountsPage> {
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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
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
              const SizedBox(height: 16),
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
    );
  }
}
