import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadTransactionsArguments {
  final DateTime date;
  final TypeSpending typeSpending;

  LoadTransactionsArguments(this.date, this.typeSpending);
} 

class LoadTransactionsByTypeUsecase extends BaseUseCase<LoadTransactionsArguments, List<Transaction>> {
  final Repository _repository;

  LoadTransactionsByTypeUsecase(this._repository);

  @override
  Future<Either<Failure, List<Transaction>>> execute(LoadTransactionsArguments input) {
    return _repository.loadTransactionsBySpending(input.date, input.typeSpending);
  }
}