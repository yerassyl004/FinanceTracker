import 'package:dartz/dartz.dart';
import 'package:finance_app/app/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}