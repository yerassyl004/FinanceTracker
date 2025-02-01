import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class UpdateAccountUsecase extends BaseUseCase<Account, String> {
  final Repository _repository;

  UpdateAccountUsecase(this._repository);

  @override
  Future<Either<Failure, String>> execute(Account input) {
    return _repository.createAccount(input);
  }
}
