import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:finance_app/domain/usecases.dart/base_usecase.dart';

class LoadCategoryUsecase extends BaseUseCase<CategoryType, List<Category>> {
  final Repository _repository;

  LoadCategoryUsecase(this._repository);

  @override
  Future<Either<Failure, List<Category>>> execute(input) {
    return _repository.loadCategoryData(input);
  }
}

