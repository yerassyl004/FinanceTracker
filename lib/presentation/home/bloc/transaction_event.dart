part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.loadTransactionItems({required DateTime month}) = LoadTransactionItems;
  const factory TransactionEvent.updateTransactionItems({required DateTime month}) = UpdateTransactionItems;
}
