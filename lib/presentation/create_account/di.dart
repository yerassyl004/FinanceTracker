import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/create_account/bloc/create_account_bloc.dart';

extension CreateAccountDI on DI {
  CreateAccountBloc getCreateAccountBloc(Account? account) {
    return CreateAccountBloc(account, getIt(), getIt());
  }
}