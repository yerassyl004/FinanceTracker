import 'package:finance_app/core/analysis/ui/analysis_list/transaction_analys_widget.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_bloc.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionAnalysList extends StatelessWidget {
  final IncomeAnalysisBloc incomeAnalysisBloc;
  final ScrollController scrollController;

  const TransactionAnalysList({
    super.key,
    required this.incomeAnalysisBloc,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeAnalysisBloc, IncomeAnalysisState>(
      bloc: incomeAnalysisBloc,
      builder: (context, state) {
        if (state is IncomeAnalysisLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is IncomeAnalysisLoaded) {
          return ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.zero,
            itemCount: state.analysisList.length,
            itemBuilder: (context, index) {
              return TransactionAnalysWidget(analysis: state.analysisList[index]);
            },
          );
        } else if (state is IncomeAnalysisError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const Center(child: Text('No transactions found.'));
        }
      },
    );
  }
}
