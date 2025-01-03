import 'package:finance_app/presentation/create_account/service/create_account_service.dart';
import 'package:finance_app/presentation/create_account/ui/widget/balance_field_widget.dart';
import 'package:finance_app/presentation/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  final Account? account;
  const CreateAccountPage({super.key, this.account});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
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
    _nameController.text = widget.account?.title ?? 'Untitled';

    if (widget.account != null) {
      _selectedImageIndex =
          _imageAssets.indexOf(widget.account!.icon);
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
    _scrollController.dispose();
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
      double? cash = double.tryParse(balanceText) ?? 0;

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
    } catch (e) {
      print('Error creating account: ${e.toString()}');
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            // color: Colors.white,
            child: SafeArea(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
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
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(CupertinoIcons.xmark),
                        ),
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
                            color: Colors.black,
                          ),
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
                                  color: Colors.grey.shade100,
                                ),
                                child: Image.asset(
                                  'assets/images/${_imageAssets[index]}.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
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
            ),
          );
        },
      ),
    );
  }
}
