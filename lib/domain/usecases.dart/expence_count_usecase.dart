import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class ExpenceCountUsecase extends BaseUseCase<List<Transaction>, double> {
  final Repository _repository;

  ExpenceCountUsecase(this._repository);

  @override
  Future<Either<Failure, double>> execute(List<Transaction> input) async {
    try {
      final amount = await _repository.expenseAmount(input);
      return Right(amount);
    } catch (e) {
      return Left(Failure(-1, e.toString()));
    }
  }
}
