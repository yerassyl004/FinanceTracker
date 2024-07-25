import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/analysis/bloc/analysis_bloc.dart';
import 'package:finance_app/core/analysis/bloc/analysis_event.dart';
import 'package:finance_app/core/analysis/bloc/analysis_state.dart';
import 'package:finance_app/core/analysis/service/analys_service.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_bloc.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/bloc/income_analysis_event.dart';
import 'package:finance_app/core/analysis/ui/widgets/analys_header_widget.dart';
import 'package:finance_app/core/analysis/ui/widgets/multi_segment_circular_percent_indicator.dart';
import 'package:finance_app/core/analysis/ui/analysis_list/transaction_analys_list.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage>
    with SingleTickerProviderStateMixin {
  late AnalysisBloc _analysisBloc;
  late IncomeAnalysisBloc _incomeAnalysisBloc;
  late AnimationController _fabAnimationController;
  late Animation<Offset> _fabAnimation;
  final ScrollController _scrollController = ScrollController();
  var selectedMonth = DateTime.now();
  var selectedType = TypeSpending.expense;

  @override
void initState() {
  super.initState();
  _analysisBloc = AnalysisBloc(analysService: AnalysService());
  _incomeAnalysisBloc = IncomeAnalysisBloc(analysService: AnalysService());
  _fabAnimationController = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  _fabAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, 2.0),
  ).animate(_fabAnimationController);

  _scrollController.addListener(_scrollListener);
  _analysisBloc.add(LoadTransactions(selectedMonth, selectedType));
  _incomeAnalysisBloc.add(LoadIncomeTransactions(selectedMonth, selectedType));  // Add this line
}


  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      _fabAnimationController.forward();
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      _fabAnimationController.reverse();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabAnimationController.dispose();
    _analysisBloc.close();
    _incomeAnalysisBloc.close();
    super.dispose();
  }

  void _handleDateChanged(DateTime newDate) {
    selectedMonth = newDate;
    _analysisBloc.add(LoadTransactions(selectedMonth, selectedType));
    _incomeAnalysisBloc.add(LoadIncomeTransactions(selectedMonth, selectedType));
  }

  void _setTypeSpending(TypeSpending typeSpending) {
    _analysisBloc.add(LoadTransactions(selectedMonth, typeSpending));
    _incomeAnalysisBloc.add(LoadIncomeTransactions(selectedMonth, typeSpending));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnalysHeaderWidget(
                    onDateChanged: _handleDateChanged,
                    typeSpending: _setTypeSpending),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                  ),
                    child: Center(
                      child: BlocBuilder<AnalysisBloc, AnalysisState>(
                        bloc: _analysisBloc,
                        builder: (context, state) {
                          if (state is AnalysisLoading) {
                            return const CircularProgressIndicator();
                          } else if (state is AnalysisLoaded) {
                            return MultiSegmentCircularPercentIndicator(
                              segments: state.segments,
                            );
                          } else if (state is AnalysisError) {
                            return Text('Error: ${state.message}');
                          } else {
                            return const Text('No data available');
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TransactionAnalysList(
                    incomeAnalysisBloc: _incomeAnalysisBloc,
                    scrollController: _scrollController,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: SlideTransition(
              position: _fabAnimation,
              child: FloatingActionButton(
                backgroundColor: Colors.grey.shade300,
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddTransactionPage()),
                  );
                  if (result == true) {
                    _analysisBloc
                        .add(LoadTransactions(selectedMonth, selectedType));
                  }
                },
                child: const Icon(CupertinoIcons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
