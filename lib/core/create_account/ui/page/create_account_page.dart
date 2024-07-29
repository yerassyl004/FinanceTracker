import 'package:finance_app/core/create_account/ui/widget/balance_field_widget.dart';
import 'package:finance_app/core/create_account/ui/widget/name_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController _balanceController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

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
              child: TextFieldWidget(controller: _balanceController),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: 200,
              height: 48,
              child: NameFieldWidget(controller: _nameController),
            ),
          ],
        ),
      ),
    );
  }
}
