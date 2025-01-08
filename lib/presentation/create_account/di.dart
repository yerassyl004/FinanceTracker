import 'package:finance_app/app/di.dart';
import 'package:finance_app/data/models/account.dart';
import 'package:finance_app/presentation/create_account/bloc/create_account_bloc.dart';
import 'package:finance_app/presentation/create_account/repository/create_account_repository.dart';

extension CreateAccountDI on DI {
  CreateAccountBloc getCreateAccountBloc({required CreateAccountRepository repository, Account? account}) {
    return CreateAccountBloc(repository: repository, initialAccount: account);
  }
}