import 'package:bloc/bloc.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/usecases.dart/expence_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/income_count_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_analysis_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_transactions_usecase.dart';
import 'package:finance_app/domain/usecases.dart/load_transactions_with_type_usecase.dart';
import 'package:finance_app/domain/usecases.dart/segment_persentage_usecase.dart';
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

  const factory AnalysisEvent.updateSegments({
    required AnalysisData data,
  }) = UpdateSegments;

  const factory AnalysisEvent.loadAnalysis({
    required AnalysisData data,
  }) = LoadAnalysis;
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
  final LoadTransactionsWithTypeUsecase loadTransactionsWithTypeUsecase;

  AnalysisBloc(
    this.getExpenseAmountUseCase,
    this.getIncomeAmountUseCase,
    this.loadAccountUseCase,
    this.segmentPersentageUsecase,
    this.loadAnalysisUsecase,
    this.loadTransactionsWithTypeUsecase,
  ) : super(const AnalysisState.initial()) {
    on<LoadTransactions>(_onLoadTransactions);
    on<UpdateSegments>(_onUpdateSegments);
    on<LoadAnalysis>(_onLoadAnalysis);
    on<UpdateTransactions>(_onUpdateTransactions);

    add(AnalysisEvent.loadTransactions());
  }

  Future<void> _onLoadTransactions(
      LoadTransactions event, Emitter<AnalysisState> emit) async {
    emit(AnalysisState.loading(data: AnalysisData(
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
        final expenseResult = await getExpenseAmountUseCase.execute(transactions);
        final incomeResult = await getIncomeAmountUseCase.execute(transactions);
        final segmentResult = await segmentPersentageUsecase.execute(transactions);

        double expenseAmount = 0;
        double incomeAmount = 0;
        List<Segment> segmentList = [];

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

        emit(AnalysisState.loaded(
          data: AnalysisData(
            currentMonth: DateTime.now(),
            transactions: transactions,
            segments: segmentList,
            expenseAmount: expenseAmount,
            incomeAmount: incomeAmount,
          ),
        ));
      },
    );
  }

  Future<void> _onUpdateTransactions(
      UpdateTransactions event, Emitter<AnalysisState> emit) async {
    emit(AnalysisState.loading(data: AnalysisData(
      currentMonth: event.month,
      transactions: [],
      segments: [],
    )));

    final result = await loadTransactionsWithTypeUsecase.execute(LoadTransactionsArguments(event.month, event.typeSpending));

    await result.fold(
      (failure) async {
        emit(AnalysisState.error(failure.toString()));
      },
      (transactions) async {
        final expenseResult = await getExpenseAmountUseCase.execute(transactions);
        final incomeResult = await getIncomeAmountUseCase.execute(transactions);
        final segmentResult = await segmentPersentageUsecase.execute(transactions);

        double expenseAmount = 0;
        double incomeAmount = 0;
        List<Segment> segmentList = [];

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

        emit(AnalysisState.loaded(
          data: AnalysisData(
            currentMonth: event.month,
            transactions: transactions,
            segments: segmentList,
            expenseAmount: expenseAmount,
            incomeAmount: incomeAmount,
          ),
        ));
      },
    );
  }

  Future<void> _onUpdateSegments(
      UpdateSegments event, Emitter<AnalysisState> emit) async {
        print(event.data.currentMonth);
    final result = await segmentPersentageUsecase.execute(event.data.transactions);
    result.fold(
      (failure) => emit(AnalysisState.error(failure.toString())),
      (segments) {
        emit(AnalysisState.loaded(data: event.data.copyWith(segments: segments)));
      },
    );
  }

  Future<void> _onLoadAnalysis(
      LoadAnalysis event, Emitter<AnalysisState> emit) async {
    final result = await loadAnalysisUsecase.execute(event.data.transactions);

    result.fold(
      (failure) => emit(AnalysisState.error(failure.toString())),
      (analysis) {
        emit(AnalysisState.loaded(data: event.data.copyWith(analysis: analysis)));
      },
    );
  }
}
