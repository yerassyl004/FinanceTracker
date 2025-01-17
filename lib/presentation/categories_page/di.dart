import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/categories_page/bloc/category_bloc.dart';
import 'package:finance_app/presentation/categories_page/repository/category_repository.dart';

extension CategoryDI on DI {
  CategoryBloc getCategoryBloc({required CategoryRepository repository}) {
    return CategoryBloc(repository: repository);
  }
}