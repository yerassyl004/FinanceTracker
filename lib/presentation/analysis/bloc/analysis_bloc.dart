import 'package:bloc/bloc.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/usecases.dart/transactions/expence_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/income_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/load_analysis_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_usecase.dart';
import 'package:finance_app/domain/usecases.dart/transactions/load_transactions_by_type_usecase.dart';
import 'package:finance_app/domain/usecases.dart/analysis/segment_persentage_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/models/segment.dart';
import 'package:finance_app/domain/models/transaction.dart';

part 'analysis_bloc.freezed.dart';

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

@freezed
class AnalysisEvent with _$AnalysisEvent {
  const factory AnalysisEvent.loadTransactions() = LoadTransactions;

  const factory AnalysisEvent.updateTransactions({
    required DateTime month,
    required TypeSpending typeSpending,
  }) = UpdateTransactions;
}

@freezed
class AnalysisState with _$AnalysisState {
  const factory AnalysisState.initial() = AnalysisInitial;
  const factory AnalysisState.loading({required AnalysisData data}) =
      AnalysisLoading;
  const factory AnalysisState.loaded({required AnalysisData data}) =
      AnalysisLoaded;
  const factory AnalysisState.error(String message) = AnalysisError;
}

class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  final LoadTransactionsUsecase loadAccountUseCase;
  final ExpenceCountUsecase getExpenseAmountUseCase;
  final IncomeCountUsecase getIncomeAmountUseCase;
  final SegmentPersentageUsecase segmentPersentageUsecase;
  final LoadAnalysisUsecase loadAnalysisUsecase;
  final LoadTransactionsByTypeUsecase loadTransactionsWithTypeUsecase;

  AnalysisBloc(
    this.getExpenseAmountUseCase,
    this.getIncomeAmountUseCase,
    this.loadAccountUseCase,
    this.segmentPersentageUsecase,
    this.loadAnalysisUsecase,
    this.loadTransactionsWithTypeUsecase,
  ) : super(const AnalysisState.initial()) {
    on<LoadTransactions>(_onLoadTransactions);
    on<UpdateTransactions>(_onUpdateTransactions);

    add(AnalysisEvent.loadTransactions());
  }

  Future<void> _onLoadTransactions(
      LoadTransactions event, Emitter<AnalysisState> emit) async {
    emit(AnalysisState.loading(
        data: AnalysisData(
      currentMonth: DateTime.now(),
      transactions: [],
      segments: [],
    )));

    final result = await loadAccountUseCase.execute(DateTime.now());

    await result.fold(
      (failure) async {
        emit(AnalysisState.error(failure.toString()));
      },
      (transactions) async {
        final expenseResult =
            await getExpenseAmountUseCase.execute(transactions);
        final incomeResult = await getIncomeAmountUseCase.execute(transactions);
        final segmentResult =
            await segmentPersentageUsecase.execute(transactions);
        final analysisResult = await loadAnalysisUsecase.execute(transactions);

        double expenseAmount = 0;
        double incomeAmount = 0;
        List<Segment> segmentList = [];
        List<Analysis> analysisList = [];

        expenseResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (amount) => expenseAmount = amount,
        );

        incomeResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (amount) => incomeAmount = amount,
        );

        segmentResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (segments) => segmentList = segments,
        );

        analysisResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (analysis) => analysisList = analysis,
        );

        emit(AnalysisState.loaded(
          data: AnalysisData(
              currentMonth: DateTime.now(),
              transactions: transactions,
              segments: segmentList,
              expenseAmount: expenseAmount,
              incomeAmount: incomeAmount,
              analysis: analysisList),
        ));
      },
    );
  }

  Future<void> _onUpdateTransactions(
      UpdateTransactions event, Emitter<AnalysisState> emit) async {
    emit(AnalysisState.loading(
        data: AnalysisData(
      currentMonth: event.month,
      transactions: [],
      segments: [],
    )));

    final result = await loadTransactionsWithTypeUsecase
        .execute(LoadTransactionsArguments(event.month, event.typeSpending));

    await result.fold(
      (failure) async {
        emit(AnalysisState.error(failure.toString()));
      },
      (transactions) async {
        final expenseResult =
            await getExpenseAmountUseCase.execute(transactions);
        final incomeResult = await getIncomeAmountUseCase.execute(transactions);
        final segmentResult =
            await segmentPersentageUsecase.execute(transactions);
        final analysisResult = await loadAnalysisUsecase.execute(transactions);

        double expenseAmount = 0;
        double incomeAmount = 0;
        List<Segment> segmentList = [];
        List<Analysis> analysisList = [];

        expenseResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (amount) => expenseAmount = amount,
        );

        incomeResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (amount) => incomeAmount = amount,
        );

        segmentResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (segments) => segmentList = segments,
        );

        analysisResult.fold(
          (failure) => emit(AnalysisState.error(failure.toString())),
          (analysis) => analysisList = analysis,
        );

        emit(AnalysisState.loaded(
          data: AnalysisData(
              selectedType: event.typeSpending,
              currentMonth: event.month,
              transactions: transactions,
              segments: segmentList,
              expenseAmount: expenseAmount,
              incomeAmount: incomeAmount,
              analysis: analysisList),
        ));
      },
    );
  }
}
