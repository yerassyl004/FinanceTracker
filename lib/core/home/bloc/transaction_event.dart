import 'package:equatable/equatable.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class LoadTransactionItems extends TransactionEvent {
  final DateTime month;

  const LoadTransactionItems({required this.month});

  @override
  List<Object> get props => [month];
}