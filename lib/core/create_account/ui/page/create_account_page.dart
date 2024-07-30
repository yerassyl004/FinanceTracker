import 'package:finance_app/core/create_account/service/create_account_service.dart';
import 'package:finance_app/core/create_account/ui/widget/balance_field_widget.dart';
import 'package:finance_app/core/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateAccountPage extends StatefulWidget {
  Account? account;
  CreateAccountPage({super.key, this.account});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  int _selectedImageIndex = 0;

  final List<String> _imageAssets = [
    'card',
    'wallet_icon',
    'saving_icon',
    'visa_icon',
    'master_card_icon'
  ];

  @override
  void initState() {
    super.initState();
    _balanceController.addListener(_addCurrencySymbol);
    _balanceController.text = widget.account?.cash.toString() ?? '';
    _nameController.text = widget.account?.title ?? 'Unititled';

    if (widget.account != null) {
      _selectedImageIndex = _imageAssets.indexOf(widget.account!.icon);
      if (_selectedImageIndex == -1) {
        _selectedImageIndex = 0; // Fallback to default if icon not found
      }
    }
  }

  void _addCurrencySymbol() {
    if (!_balanceController.text.startsWith('₸')) {
      _balanceController.value = _balanceController.value.copyWith(
        text: '₸${_balanceController.text.replaceAll('₸', '')}',
        selection:
            TextSelection.collapsed(offset: _balanceController.text.length + 1),
      );
    }
  }

  @override
  void dispose() {
    _balanceController.removeListener(_addCurrencySymbol);
    _balanceController.dispose();
    super.dispose();
  }

  void _onImageTap(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }

  void _addAccount() {
    try {
      String balanceText = _balanceController.text.replaceAll('₸', '').trim();
      print('Balance text: $balanceText');

      double? cash = double.tryParse(balanceText);

      if (cash == null) {
        print('Warning: Invalid cash value, defaulting to 0');
        cash = 0;
      }

      if (_nameController.text.trim().isEmpty) {
        _nameController.text = 'Untitled';
      }

      final account = Account(
        cash: cash,
        icon: _imageAssets[_selectedImageIndex],
        title: _nameController.text.trim(),
      );

      if (widget.account == null) {
        _createAccount(account);
      } else {
        _updateAccount(account);
      }

      // CreateAccountService service = CreateAccountService();
      // service.createAccount(account);
      // Navigator.pop(context, true);
    } catch (e) {
      print('Error account: ${e.toString()}');
      Navigator.pop(context, false);
    }
  }

  void _createAccount(Account account) {
    CreateAccountService service = CreateAccountService();
    service.createAccount(account);
    Navigator.pop(context, true);
  }

  void _updateAccount(Account account) {
    widget.account?.cash = account.cash;
    widget.account?.icon = account.icon;
    widget.account?.title = account.title;

    CreateAccountService service = CreateAccountService();
    service.updateAccount(widget.account!);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                const Text(
                  'Add new account',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(CupertinoIcons.xmark))
              ],
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                const Text(
                  'Initial amount',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: BalanceFieldWidget(controller: _balanceController),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              children: [
                const Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: NameFieldWidget(controller: _nameController),
                ),
              ],
            ),
            const SizedBox(height: 26),
            const Text(
              'Select an icon',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _imageAssets.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onImageTap(index),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _selectedImageIndex == index
                              ? Colors.blueAccent
                              : Colors.transparent,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.shade100),
                          child: Image.asset(
                              'assets/images/${_imageAssets[index]}.png',
                              width: 50,
                              height: 50)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FloatingActionButton(
                onPressed: _addAccount,
                backgroundColor: Colors.blueAccent,
                child: Text(
                  widget.account == null ? 'Add' : 'Save',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
