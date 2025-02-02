import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class CreateCategoryUsecase extends BaseUseCase<Category, String> {
  final Repository _repository;

  CreateCategoryUsecase(this._repository);

  @override
  Future<Either<Failure, String>> execute(Category input) {
    return _repository.createCategory(input);
  }
}

