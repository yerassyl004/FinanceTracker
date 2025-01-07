part of 'transaction_info_bloc.dart';

@freezed
class TransactionInfoEvent with _$TransactionInfoEvent {
  const factory TransactionInfoEvent.navigate({
    required Navigate route,
  }) = NavigateTransactionInfoEvent;

  const factory TransactionInfoEvent.show({
    required TransactionInfoData data
  }) = ShowTransactionInfoEvent;

  const factory TransactionInfoEvent.remove({required TransactionInfoData data}) = RemoveTransactionInfoEvent;
}
