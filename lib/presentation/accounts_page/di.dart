import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/accounts_page/bloc/accounts_bloc.dart';
import 'package:finance_app/presentation/accounts_page/repository/accounts_repository.dart';

extension AccountsDI on DI {
  AccountsBloc getAccountsBloc({required AccountsRepository repository}) {
    return AccountsBloc(repository: repository);
  }
}