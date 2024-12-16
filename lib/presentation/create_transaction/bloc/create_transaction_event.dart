part of 'create_transaction_bloc.dart';

@freezed
class CreateTransactionEvent with _$CreateTransactionEvent {
  const factory CreateTransactionEvent.initial(
      {required CreateTransactionData data}) = InitialTransactionEvent;
  const factory CreateTransactionEvent.edit(
      {required CreateTransactionData data}) = EditTransactionEvent;
  const factory CreateTransactionEvent.showAccountList(
      {required CreateTransactionData data}) = ShowAccountListEvent;
  const factory CreateTransactionEvent.showCategoryList(
      {required CreateTransactionData data}) = ShowCategoryListEvent;
  const factory CreateTransactionEvent.saveTransaction(
      {required CreateTransactionData data}) = SaveTransactionEvent;
  const factory CreateTransactionEvent.navigate(
      {required CreateTransactionData data}) = NavigationEvent;
}
