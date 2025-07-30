// Riverpod State
import 'package:finance_app/app/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/usecases.dart/transactions/expence_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/income_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/load_analysis_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_by_type_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/segment_persentage_usecase.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/models/segment.dart';
import 'package:finance_app/domain/models/transaction.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'analysis_provider.freezed.dart';

@freezed
class AnalysisData with _$AnalysisData {
  const factory AnalysisData({
    required DateTime currentMonth,
    required List<Transaction> transactions,
    required List<Segment> segments,
    @Default([]) List<Analysis> analysis,
    @Default(0) double expenseAmount,
    @Default(0) double incomeAmount,
    @Default(TypeSpending.expense) TypeSpending selectedType,
    String? errorMessage,
  }) = _AnalysisData;
}

class AnalysisNotifier extends StateNotifier<AsyncValue<AnalysisData>> {
  final ExpenceCountUsecase expenseUseCase;
  final IncomeCountUsecase incomeUseCase;
  final SegmentPersentageUsecase segmentUseCase;
  final LoadAnalysisUsecase analysisUseCase;
  final LoadTransactionsByTypeUsecase transactionsUseCase;

  AnalysisNotifier(
    this.expenseUseCase,
    this.incomeUseCase,
    this.segmentUseCase,
    this.analysisUseCase,
    this.transactionsUseCase,
  ) : super(const AsyncValue.loading()) {
    loadTransactions();
  }

  Future<void> loadTransactions() async {
    final now = DateTime.now();
    state = const AsyncValue.loading();

    final result = await transactionsUseCase.execute(
        LoadTransactionsArguments(now, TypeSpending.expense));

    await result.fold(
      (failure) async => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (transactions) async => await _handleLoaded(transactions, now, TypeSpending.expense),
    );
  }

  Future<void> updateTransactions(DateTime month, TypeSpending type) async {
    // state = const AsyncValue.loading();
    final result = await transactionsUseCase.execute(
        LoadTransactionsArguments(month, type));

    await result.fold(
      (failure) async => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (transactions) async => await _handleLoaded(transactions, month, type),
    );
  }

  Future<void> _handleLoaded(
      List<Transaction> transactions, DateTime month, TypeSpending type) async {
    final expenseResult = await expenseUseCase.execute(transactions);
    final incomeResult = await incomeUseCase.execute(transactions);
    final segmentResult = await segmentUseCase.execute(transactions);
    final analysisResult = await analysisUseCase.execute(transactions);

    double expenseAmount = 0;
    double incomeAmount = 0;
    List<Segment> segments = [];
    List<Analysis> analysis = [];

    expenseResult.fold(
      (failure) => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (amount) => expenseAmount = amount,
    );

    incomeResult.fold(
      (failure) => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (amount) => incomeAmount = amount,
    );

    segmentResult.fold(
      (failure) => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (data) => segments = data,
    );

    analysisResult.fold(
      (failure) => state = AsyncValue.error(failure.toString(), StackTrace.current),
      (data) => analysis = data,
    );

    state = AsyncValue.data(
      AnalysisData(
        currentMonth: month,
        transactions: transactions,
        segments: segments,
        analysis: analysis,
        expenseAmount: expenseAmount,
        incomeAmount: incomeAmount,
        selectedType: type,
      ),
    );
  }
}

final expenseCountUsecaseProvider = Provider((ref) => ExpenceCountUsecase(getIt()));
final incomeCountUsecaseProvider = Provider((ref) => IncomeCountUsecase(getIt()));
final segmentPersentageUsecaseProvider = Provider((ref) => SegmentPersentageUsecase(getIt()));
final loadAnalysisUsecaseProvider = Provider((ref) => LoadAnalysisUsecase(getIt()));
final loadTransactionsWithTypeUsecaseProvider = Provider((ref) => LoadTransactionsByTypeUsecase(getIt()));


final analysisProvider = StateNotifierProvider<AnalysisNotifier, AsyncValue<AnalysisData>>(
  (ref) => AnalysisNotifier(
    ref.watch(expenseCountUsecaseProvider),
    ref.watch(incomeCountUsecaseProvider),
    ref.watch(segmentPersentageUsecaseProvider),
    ref.watch(loadAnalysisUsecaseProvider),
    ref.watch(loadTransactionsWithTypeUsecaseProvider),
  ),
);
