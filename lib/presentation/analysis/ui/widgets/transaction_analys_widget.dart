import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/app_router.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/page/transactions_category.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionAnalysWidget extends StatelessWidget {
  final Analysis analysis;
  final DateTime dateTime;
  const TransactionAnalysWidget(
      {super.key, required this.analysis, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    String categoryIcon = analysis.category.icon;
    String categoryTitle = analysis.category.title;

    return GestureDetector(
      onTap: () async {
        final result = await context.pushRoute(TransactionsCategoryRoute(
            args: TransactionsCategoryArguments(
                analysis.category, dateTime, analysis.cash)));
        if (context.mounted && result == true) {
          context.maybePop();
        }
      },
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 4),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/$categoryIcon.png',
                    height: 50.h,
                  ),
                  8.pw,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(categoryTitle, style: AppTextStyle.body16Medium()),
                    ],
                  ),
                  Spacer(),
                  Text('₸${analysis.cash.toStringAsFixed(2)}',
                      style: AppTextStyle.body16Medium())
                ],
              ),
              4.ph,
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Divider(
                  height: 2,
                  color: Color.fromRGBO(156, 182, 201, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
