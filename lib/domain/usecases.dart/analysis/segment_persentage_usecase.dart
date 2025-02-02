import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/segment.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class SegmentPersentageUsecase extends BaseUseCase<List<Transaction>, List<Segment>> {
  final Repository _repository;

  SegmentPersentageUsecase(this._repository);

  @override
  Future<Either<Failure, List<Segment>>> execute(List<Transaction> input) {
    return _repository.getSegmentPercentage(input);
  }
}