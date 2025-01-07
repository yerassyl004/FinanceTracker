part of 'transaction_info_bloc.dart';

@freezed
class TransactionInfoState with _$TransactionInfoState {
  const factory TransactionInfoState.initial() = TransactionInfoInitial;
  const factory TransactionInfoState.loading() = TransactionInfoLoading;
  const factory TransactionInfoState.show({required TransactionInfoData data}) =
      TransactionInfoShow;
  const factory TransactionInfoState.error({required String message}) = TransactionInfoError;
}
