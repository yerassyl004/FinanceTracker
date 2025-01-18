import 'package:finance_app/presentation/accounts_modal/ui/widgets/account_item_widget.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
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
      color: ColorManager.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              SizedBox(height: 16.h),
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.8,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.accounts!.length,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
