part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = TransactionInitial;
  const factory TransactionState.loading() = TransactionLoading;
  const factory TransactionState.error(String message) = TransactionError;
  const factory TransactionState.loaded({required TransactionData data}) = TransactionLoaded;
}
