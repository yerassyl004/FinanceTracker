import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

class LoadExpenseCategoryData extends CategoryEvent {
  const LoadExpenseCategoryData();

  @override
  List<Object?> get props => [];
}