import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/app_router.dart';
import 'package:finance_app/presentation/analysis/bloc/analysis_provider.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/transaction_analys_list.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/analys_header_widget.dart';
import 'package:finance_app/presentation/analysis/ui/widgets/multi_segment_circular_percent_indicator.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalysisPage extends ConsumerWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(analysisProvider);

    return state.when(
      loading: () => Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
      data: (data) => AnalysisPageView(data: data, ref: ref),
    );
  }
}


class AnalysisPageView extends StatelessWidget {
  final AnalysisData data;
  final WidgetRef ref;

  const AnalysisPageView({super.key, required this.data, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 100)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      height: 320,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(AppStrings.categories,
                                style: AppTextStyle.body20Medium()),
                            const SizedBox(height: 30),
                            MultiSegmentCircularPercentIndicator(segments: data.segments),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                TransactionAnalysList(
                    dateTime: data.currentMonth, analysisList: data.analysis),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: AnalysHeaderWidget(
              onDateChanged: (date) {
                ref.read(analysisProvider.notifier).updateTransactions(date, data.selectedType);
              },
              typeSpending: (selectedType) {
                ref.read(analysisProvider.notifier).updateTransactions(data.currentMonth, selectedType);
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
                  ref.read(analysisProvider.notifier).loadTransactions();
                }
              },
              child: const Icon(CupertinoIcons.add),
            ),
          ),
        ],
      ),
    );
  }
}
