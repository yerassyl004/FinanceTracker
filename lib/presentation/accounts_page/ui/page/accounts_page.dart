import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_bloc.dart';
import 'package:finance_app/presentation/accounts_page/di.dart';
import 'package:finance_app/presentation/accounts_page/ui/widget/accounts_list.dart';
import 'package:finance_app/presentation/create_account/ui/page/create_account_page.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            di.getAccountsBloc()
              ..add(AccountsEvent.loadAccounts()),
        child: AccountsPageView());
  }
}

class AccountsPageView extends StatelessWidget {
  const AccountsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body:
            BlocBuilder<AccountsBloc, AccountsState>(builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 8.h),
                    Text('Accounts', style: TextNewStyle.bold24(context), textAlign: TextAlign.center,),
                    Expanded(
                        child: state.maybeWhen(
                            loaded: (accounts) => AccountsList(
                                  accounts: accounts,
                                  updateList: () {
                                    context
                                        .read<AccountsBloc>()
                                        .add(AccountsEvent.loadAccounts());
                                  },
                                  deleteAccount:(account) {
                                    context
                                        .read<AccountsBloc>()
                                        .add(AccountsEvent.deleteAccount(account));
                                  },
                                  pushEditAccount: (account) async {
                                    final result =
                                        await showBarModalBottomSheet(
                                      expand: true,
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) =>
                                          CreateAccountPage(args: CreateAccountPageArguments(account: account)),
                                    );
                                    if (result == true) {
                                      context
                                          .read<AccountsBloc>()
                                          .add(AccountsEvent.loadAccounts());
                                    }
                                  },
                                ),
                            orElse: () => SizedBox()))
                  ],
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 8,
                height: 48,
                child: FloatingActionButton(
                  onPressed: () async {
                    final result = await showBarModalBottomSheet(
                      expand: true,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => CreateAccountPage(),
                    );
                    if (result == true) {
                      context.read<AccountsBloc>().add(AccountsEvent.loadAccounts());
                    }
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
          );
        }));
  }
}
