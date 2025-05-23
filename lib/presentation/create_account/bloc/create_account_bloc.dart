import 'package:finance_app/app/constant.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/usecases.dart/account/create_account_usecase.dart';
import 'package:finance_app/domain/usecases.dart/account/update_account_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_bloc.freezed.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.create({required CreateAccountData data}) =
      CreateNewAccount;
  const factory CreateAccountEvent.edit({required CreateAccountData data}) =
      EditNewAccount;
  const factory CreateAccountEvent.update({required CreateAccountData data}) =
      UpdateNewAccount;
  const factory CreateAccountEvent.init() = InitNewAccount;
}

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState.initial() = InitialCreateAccountState;
  const factory CreateAccountState.show({required CreateAccountData data}) =
      ShowCreateAccountState;
  const factory CreateAccountState.success({required CreateAccountData data}) =
      SuccessCreateAccountState;
}

@freezed
class CreateAccountData with _$CreateAccountData {
  const factory CreateAccountData({
    @Default(null) Account? account,
    @Default(0) int selectedImageIndex,
    @Default([]) List<String> imageAssets,
  }) = _CreateAccountData;
}

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final Account? initialAccount;
  final CreateAccountUsecase createAccountUsecase;
  final UpdateAccountUsecase updateAccountUsecase;

  CreateAccountBloc(this.initialAccount, this.createAccountUsecase, this.updateAccountUsecase)
      : super(CreateAccountState.initial()) {
    on<CreateNewAccount>(_create);
    on<EditNewAccount>(_edit);
    on<UpdateNewAccount>(_update);
    on<InitNewAccount>(_init);
  }

  Future<void> _init(
      InitNewAccount event, Emitter<CreateAccountState> emit) async {
    final imageAssets = getDefoultImageAssets();
    final newData = CreateAccountData(
        account: initialAccount != null
            ? initialAccount!
            : Account(cash: 0, icon: imageAssets[0], title: ''),
        selectedImageIndex: initialAccount != null
            ? imageAssets.indexOf(initialAccount!.icon)
            : 0,
        imageAssets: imageAssets);
    debugPrint(newData.account?.title);
    debugPrint(initialAccount?.id);
    emit(CreateAccountState.show(data: newData));
  }

  Future<void> _edit(
      EditNewAccount event, Emitter<CreateAccountState> emit) async {
    debugPrint(event.data.account?.id);
    emit(CreateAccountState.show(data: event.data));
  }

  Future<void> _create(
      CreateNewAccount event, Emitter<CreateAccountState> emit) async {
    if (isValid(event.data.account)) {
      if (initialAccount == null) {
        await createAccountUsecase.execute(event.data.account!);
      } else {
        await updateAccountUsecase.execute(event.data.account!);
      }
      emit(CreateAccountState.success(data: event.data));
    }
    emit(CreateAccountState.show(data: event.data));
  }

  bool isValid(Account? account) {
    if (account?.title == '') {
      return false;
    }
    return true;
  }

  Future<void> _update(
      UpdateNewAccount event, Emitter<CreateAccountState> emit) async {}
}
