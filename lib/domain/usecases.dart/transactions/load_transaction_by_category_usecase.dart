import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadTransactionsByCategoryArguments {
  final DateTime date;
  final Category category;

  LoadTransactionsByCategoryArguments(this.date, this.category);
} 

class LoadTransactionByCategoryUsecase extends BaseUseCase<LoadTransactionsByCategoryArguments, List<Transaction>> {
  final Repository _repository;

  LoadTransactionByCategoryUsecase(this._repository);

  @override
  Future<Either<Failure, List<Transaction>>> execute(LoadTransactionsByCategoryArguments input) {
    return _repository.loadTransactionsByCategory(input.date, input.category);
  }
}