import 'package:finance_app/core/accounts_modal/service/account_service.dart';
import 'package:finance_app/core/accounts_page/bloc/accounts_bloc.dart';
import 'package:finance_app/core/accounts_page/bloc/accounts_event.dart';
import 'package:finance_app/core/accounts_page/bloc/accounts_state.dart';
import 'package:finance_app/core/accounts_page/ui/widget/accounts_header.dart';
import 'package:finance_app/core/accounts_page/ui/widget/accounts_list.dart';
import 'package:finance_app/core/create_account/ui/page/create_account_page.dart';
import 'package:finance_app/core/home/bloc/transaction_bloc.dart';
import 'package:finance_app/core/home/bloc/transaction_event.dart';
import 'package:finance_app/core/home/bloc/transaction_state.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  late TransactionBloc _transactionBloc;
  late AccountsBloc _accountsBloc;

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionBloc(cashService: CountCashService());
    _accountsBloc = AccountsBloc(service: AccountService());

    _transactionBloc.add(LoadTransactionItems(month: DateTime.now()));
    _accountsBloc.add(const LoadAccounts());
  }

  void _handleDateChanged(DateTime newDate) {
    // selectedMonth = newDate;
    _transactionBloc.add(LoadTransactionItems(month: newDate));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 115,
                ),
                Expanded(
                    child: BlocBuilder(
                        bloc: _accountsBloc,
                        builder: (context, state) {
                          if (state is AccountLoading) {
                            return const SizedBox();
                          } else if (state is AccountsLoaded) {
                            return AccountsList(accounts: state.accounts);
                          } else {
                            return const SizedBox();
                          }
                        })),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: BlocBuilder<TransactionBloc, TransactionState>(
              bloc: _transactionBloc,
              builder: (context, state) {
                if (state is TransactionError) {
                  return Center(child: Text('Error: ${state.message}'));
                } else if (state is TransactionLoading) {
                  return const SizedBox();
                } else if (state is TransactionLoaded) {
                  return AccountsHeader(
                    transactionsFuture: state.transaction,
                    onDateChanged: _handleDateChanged,
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
          Positioned(
              left: 16,
              right: 16,
              bottom: 8,
              height: 48,
              child: FloatingActionButton(
                onPressed: () {
              showBarModalBottomSheet(
                expand: true,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => CreateAccountPage(),
              );
            },
                backgroundColor: Colors.blueAccent,
                child: const Text(
                  'Add new account',
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
    );
  }
}

class ModalInsideModal extends StatelessWidget {
  const ModalInsideModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Close'),
              onTap: () => Navigator.of(context).pop(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('This is the modal content'),
            ),
          ],
        ),
      ),
    );
  }
}