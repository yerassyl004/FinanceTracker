// analysis_state.dart
import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/segment.dart';
import 'package:finance_app/core/models/transaction.dart';

abstract class AnalysisState extends Equatable {
  const AnalysisState();

  @override
  List<Object> get props => [];
}

class AnalysisInitial extends AnalysisState {}

class AnalysisLoading extends AnalysisState {}

class AnalysisLoaded extends AnalysisState {
  final List<Transaction> transactions;
  final List<Segment> segments;

  const AnalysisLoaded({required this.transactions, required this.segments});

  @override
  List<Object> get props => [transactions, segments];
}

class AnalysisError extends AnalysisState {
  final String message;

  const AnalysisError(this.message);

  @override
  List<Object> get props => [message];
}
