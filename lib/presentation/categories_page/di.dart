import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/categories_page/bloc/category_bloc.dart';

extension CategoryDI on DI {
  CategoryBloc getCategoryBloc() {
    return CategoryBloc(getIt(), getIt());
  }
}