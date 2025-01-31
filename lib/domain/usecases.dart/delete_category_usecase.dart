import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class DeleteCategoryUsecase extends BaseUseCase<String, String> {
  final Repository _repository;

  DeleteCategoryUsecase(this._repository);

  @override
  Future<Either<Failure, String>> execute(String input) {
    return _repository.deleteCategoryData(input);
  }
}

