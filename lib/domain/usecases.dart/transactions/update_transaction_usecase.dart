import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class UpdateTransactionUsecase extends BaseUseCase<Transaction, String> {
  final Repository _repository;

  UpdateTransactionUsecase(this._repository);

  @override
  Future<Either<Failure, String>> execute(Transaction input) {
    return _repository.updateTransaction(input);
  }
}
