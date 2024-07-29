import 'package:finance_app/core/create_account/service/create_account_service.dart';
import 'package:finance_app/core/create_account/ui/widget/balance_field_widget.dart';
import 'package:finance_app/core/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/core/models/account.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  int _selectedImageIndex = -1;

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
  }

  void _addCurrencySymbol() {
    if (!_balanceController.text.startsWith('₸')) {
      _balanceController.value = _balanceController.value.copyWith(
        text: '₸${_balanceController.text.replaceAll('₸', '')}',
        selection: TextSelection.collapsed(offset: _balanceController.text.length + 1),
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
      double cash = double.parse(balanceText);
      if (_selectedImageIndex == -1) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select an icon.')),
        );
        return;
      }
      if (_nameController.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter a name.')),
        );
        return;
      }
      final account = Account(
        cash: cash,
        icon: _imageAssets[_selectedImageIndex],
        title: _nameController.text.trim(),
      );
      CreateAccountService service = CreateAccountService();
      service.createAccount(account);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Account created successfully.')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid balance input.')),
      );
    }
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Add new account',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 48),
            const Center(
              child: Text(
                'Current balance',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 200,
              height: 48,
              child: BalanceFieldWidget(controller: _balanceController),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 200,
              height: 48,
              child: NameFieldWidget(controller: _nameController),
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
              height: 100,
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
                          color: Colors.grey.shade100
                        ),
                        child: Image.asset('assets/images/${_imageAssets[index]}.png', width: 60, height: 50)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 250,
              height: 48,
              child: FloatingActionButton(
                onPressed: _addAccount,
                backgroundColor: Colors.blueAccent,
                child: const Text(
                  'Add',
                  style: TextStyle(
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
