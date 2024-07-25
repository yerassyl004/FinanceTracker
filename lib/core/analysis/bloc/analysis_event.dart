// analysis_event.dart
import 'package:equatable/equatable.dart';
import 'package:finance_app/core/models/type_spending.dart';

abstract class AnalysisEvent extends Equatable {
  const AnalysisEvent();

  @override
  List<Object> get props => [];
}

class LoadTransactions extends AnalysisEvent {
  final DateTime month;
  final TypeSpending typeSpending;

  const LoadTransactions(this.month, this.typeSpending);

  @override
  List<Object> get props => [month, typeSpending];
}

class UpdateSegments extends AnalysisEvent {}
