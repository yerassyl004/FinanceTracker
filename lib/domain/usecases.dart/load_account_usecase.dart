import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadAccountUseCase extends BaseUseCase<void, List<Account>> {
  final Repository _repository;

  LoadAccountUseCase(this._repository);

  @override
  Future<Either<Failure, List<Account>>> execute(input) async {
    return _repository.loadAccountData();
  }
}

