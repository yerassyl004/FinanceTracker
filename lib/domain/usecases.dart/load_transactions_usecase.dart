import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadTransactionsUsecase extends BaseUseCase<DateTime, List<Transaction>> {
  final Repository _repository;

  LoadTransactionsUsecase(this._repository);

  @override
  Future<Either<Failure, List<Transaction>>> execute(DateTime input) {
    return _repository.loadTransactions(input);
  }
}