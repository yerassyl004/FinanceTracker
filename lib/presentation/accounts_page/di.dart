import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_bloc.dart';

extension AccountsDI on DI {
  AccountsBloc getAccountsBloc() {
    return AccountsBloc(getIt(), getIt());
  }
}