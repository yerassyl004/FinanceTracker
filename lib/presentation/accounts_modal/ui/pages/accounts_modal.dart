import 'package:finance_app/presentation/accounts_modal/ui/widgets/account_item_widget.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAccountsPage extends StatelessWidget {
  final CreateTransactionData data;
  final Function(Account) onTap;
  final bool fromAccount;

  const AddAccountsPage({
    this.fromAccount = false,
    super.key,
    required this.onTap,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select an account', style: AppTextStyle.bold24()),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  itemCount: data.accounts?.length ?? 0,
                  itemBuilder: (context, index) {
                    final account = data.accounts![index];
                    return InkWell(
                      onTap: () {
                        onTap(account);
                        Navigator.pop(context);
                      },
                      child: AccountItemWidget(account: account),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddAccountsPageWithScroll extends StatelessWidget {
  final CreateTransactionData data;
  final Function(Account) onTap;
  final ScrollController scrollController;

  const AddAccountsPageWithScroll({
    super.key,
    required this.onTap,
    required this.data,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select an account', style: AppTextStyle.bold24()),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: data.accounts?.length ?? 0,
                  itemBuilder: (context, index) {
                    final account = data.accounts![index];
                    return InkWell(
                      onTap: () {
                        onTap(account);
                        Navigator.pop(context);
                      },
                      child: AccountItemWidget(account: account),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
