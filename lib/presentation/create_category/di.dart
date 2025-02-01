import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/create_category/bloc/create_category_bloc.dart';

extension CreateCategoryDI on DI {
  CreateCategoryBloc getCreateCategoryBloc(Category? category) {
    return CreateCategoryBloc(category, getIt(), getIt());
  }
}