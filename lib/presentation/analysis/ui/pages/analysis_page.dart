import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/app_router.dart';
import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/analysis/bloc/analysis_bloc.dart';
import 'package:finance_app/presentation/analysis/di.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/transaction_analys_list.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/analys_header_widget.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/multi_segment_circular_percent_indicator.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di.getAnalysisBloc(), child: AnalysisPageView());
  }
}

class AnalysisPageView extends StatelessWidget {
  const AnalysisPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalysisBloc, AnalysisState>(
        builder: (context, state) => state.maybeWhen(
            orElse: () => SizedBox(),
            loaded: (data) => Scaffold(
                  backgroundColor: Colors.grey.shade100,
                  body: Stack(
                    children: [
                      SafeArea(
                        child: CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: SizedBox(height: 100),
                            ),
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 320,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 26),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(AppStrings.categories,
                                            style: AppTextStyle.body20Medium()),
                                        SizedBox(height: 30),
                                        MultiSegmentCircularPercentIndicator(
                                          segments: data.segments,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TransactionAnalysList(
                                dateTime: data.currentMonth,
                                analysisList: data.analysis),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: AnalysHeaderWidget(
                          onDateChanged: (date) {
                            context.read<AnalysisBloc>().add(
                                AnalysisEvent.updateTransactions(
                                    month: date,
                                    typeSpending: data.selectedType));
                          },
                          typeSpending: (selectedType) {
                            context.read<AnalysisBloc>().add(
                                AnalysisEvent.updateTransactions(
                                    month: data.currentMonth,
                                    typeSpending: selectedType));
                          },
                          currentDate: data.currentMonth,
                          selectedType: data.selectedType,
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: FloatingActionButton(
                          backgroundColor: Colors.grey.shade300,
                          onPressed: () async {
                            final result = await context.pushRoute(NewCreateTransactionsRoute(args: null));
                            if (context.mounted && result == true) {
                              context
                                  .read<AnalysisBloc>()
                                  .add(LoadTransactions());
                            }
                          },
                          child: Icon(CupertinoIcons.add),
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
