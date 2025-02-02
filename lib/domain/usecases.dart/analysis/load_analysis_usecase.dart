import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/analysis.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadAnalysisUsecase extends BaseUseCase<List<Transaction>, List<Analysis>> {
  final Repository _repository;

  LoadAnalysisUsecase(this._repository);

  @override
  Future<Either<Failure, List<Analysis>>> execute(input) async {
    return _repository.getExpensePercentItem(input);
  }
}

