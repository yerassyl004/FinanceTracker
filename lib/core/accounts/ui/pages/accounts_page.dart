import 'dart:convert';
import 'package:finance_app/core/accounts/ui/widgets/account_item_widget.dart';
import 'package:finance_app/core/accounts/ui/widgets/add_account_button.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountsPage extends StatefulWidget {
  final Function(Account) onTapAccount;
  const AccountsPage({super.key, required this.onTapAccount});

  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  List<Account> account = [
    Account(cash: 10000, icon: 'card', title: 'Card'),
    Account(cash: 10000, icon: 'cash_icon', title: 'Cash'),
    Account(cash: 5000, icon: 'saving_icon', title: 'Saving'),
  ];

  @override
  void initState() {
    super.initState();
    // _saveAccountData();
    _loadAccountData();
  }

  Future<void> _loadAccountData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList = prefs.getStringList('accounts') ?? [];

    setState(() {
      account = accountsList
          .map((jsonString) => Account.fromJson(jsonDecode(jsonString)))
          .toList();
    });
  }

  Future<void> _saveAccountData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> accountsList =
        account.map((acc) => jsonEncode(acc.toJson())).toList();

    await prefs.setStringList('accounts', accountsList);
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
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
