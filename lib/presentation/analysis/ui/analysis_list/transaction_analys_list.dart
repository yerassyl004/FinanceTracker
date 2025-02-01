import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/presentation/analysis/ui/analysis_list/transaction_analys_widget.dart';
import 'package:flutter/material.dart';

class TransactionAnalysList extends StatelessWidget {
  final DateTime dateTime;
  final List<Analysis> analysisList;

  const TransactionAnalysList({
    super.key,
    required this.dateTime,
    required this.analysisList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return TransactionAnalysWidget(
            analysis: analysisList[index],
            dateTime: dateTime,
          );
        },
        childCount: analysisList.length,
      ),
    );
  }
}
