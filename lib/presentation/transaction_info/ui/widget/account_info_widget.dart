import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfoWidget extends StatelessWidget {
  final Account account;
  const AccountInfoWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Image.asset(
                'assets/images/${account.icon}.png',
                height: 40.h,
                width: 40.w,
              ),
            ),
          ),
          16.pw,
          Text(
            account.title,
            style: AppTextStyle.body20Medium()
          ),
        ],
      ),
    );
  }
}