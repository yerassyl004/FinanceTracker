import 'package:equatable/equatable.dart';
import 'package:finance_app/domain/models/type_spending.dart';

abstract class IncomeAnalysisEvent extends Equatable {
  const IncomeAnalysisEvent();

  @override
  List<Object> get props => [];
}

class LoadIncomeTransactions extends IncomeAnalysisEvent {
  final DateTime date;
  final TypeSpending typeSpending;

  const LoadIncomeTransactions(this.date, this.typeSpending);

  @override
  List<Object> get props => [date, typeSpending];
}
