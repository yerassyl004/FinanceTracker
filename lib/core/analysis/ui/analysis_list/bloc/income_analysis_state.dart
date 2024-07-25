import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/analysis.dart';

abstract class IncomeAnalysisState extends Equatable {
  const IncomeAnalysisState();

  @override
  List<Object> get props => [];
}

class IncomeAnalysisInitial extends IncomeAnalysisState {}

class IncomeAnalysisLoading extends IncomeAnalysisState {}

class IncomeAnalysisLoaded extends IncomeAnalysisState {
  final List<Analysis> analysisList;

  const IncomeAnalysisLoaded({required this.analysisList});

  @override
  List<Object> get props => [analysisList];
}

class IncomeAnalysisError extends IncomeAnalysisState {
  final String message;

  const IncomeAnalysisError({required this.message});

  @override
  List<Object> get props => [message];
}
