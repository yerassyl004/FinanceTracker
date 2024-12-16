part of 'create_transaction_bloc.dart';

@freezed
class CreateTransactionState with _$CreateTransactionState {
  const factory CreateTransactionState.initial(CreateTransactionData data, [@Default(null) String? error]) =
      InitialTransactionState;

  const factory CreateTransactionState.editing(CreateTransactionData data, [@Default(null) String? error]) =
      EditTransactionState;

  const factory CreateTransactionState.loading(CreateTransactionData data) = LoadingTransactionState;

  const factory CreateTransactionState.success(CreateTransactionData data) = SuccessTransactionState;
}
