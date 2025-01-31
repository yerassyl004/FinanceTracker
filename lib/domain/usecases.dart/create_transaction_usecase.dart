import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class CreateTransactionUsecase extends BaseUseCase<Transaction, bool> {
  final Repository _repository;

  CreateTransactionUsecase(this._repository);

  @override
  Future<Either<Failure, bool>> execute(Transaction input) {
    return _repository.createTransaction(input);
  }
}