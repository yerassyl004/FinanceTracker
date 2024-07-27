import 'package:finance_app/core/analysis/ui/analysis_list/transaction_analys_widget.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_bloc.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionAnalysList extends StatelessWidget {
  final IncomeAnalysisBloc incomeAnalysisBloc;

  const TransactionAnalysList({
    super.key,
    required this.incomeAnalysisBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeAnalysisBloc, IncomeAnalysisState>(
      bloc: incomeAnalysisBloc,
      builder: (context, state) {
        if (state is IncomeAnalysisLoading) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (state is IncomeAnalysisLoaded) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return TransactionAnalysWidget(
                    analysis: state.analysisList[index],
                  );
                },
                childCount: state.analysisList.length,
              ),
            
          );
        } else if (state is IncomeAnalysisError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${state.message}')),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: Text('No transactions found.')),
          );
        }
      },
    );
  }
}
