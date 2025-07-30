import 'package:finance_app/presentation/accounts_page/provider/accounts_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:finance_app/presentation/accounts_page/ui/widget/accounts_list.dart';
import 'package:finance_app/presentation/create_account/ui/page/create_account_page.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';

class AccountsPage extends ConsumerWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountsProvider);
    final notifier = ref.read(accountsProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 8.h),
                Text(
                  AppStrings.accounts,
                  style: AppTextStyle.bold24(),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: state.maybeWhen(
                    loaded: (accounts) => AccountsList(
                      accounts: accounts,
                      updateList: () => notifier.loadAccounts(),
                      deleteAccount: (account) => notifier.delete(account),
                      pushEditAccount: (account) async {
                        final result = await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.r),
                                    topRight: Radius.circular(16.r),
                                  ),
                                ),
                                child: FractionallySizedBox(
                                  heightFactor: 0.95,
                                  child: CreateAccountPage(
                                    args: CreateAccountPageArguments(
                                        account: account),
                                  ),
                                ),
                              ),
                            );
                          },
                        );

                        if (context.mounted && result == true) {
                          notifier.loadAccounts();
                        }
                      },
                    ),
                    orElse: () => const Center(child: CircularProgressIndicator()),
                  ),
                ),
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
                final result = await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            topRight: Radius.circular(16.r),
                          ),
                        ),
                        child: FractionallySizedBox(
                          heightFactor: 0.95,
                          child: const CreateAccountPage(),
                        ),
                      ),
                    );
                  },
                );

                if (result == true) {
                  notifier.loadAccounts();
                }
              },
              backgroundColor: Colors.blueAccent,
              child: Text(
                'Add new account',
                style: AppTextStyle.bold16()
                    .copyWith(color: ColorManager.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
