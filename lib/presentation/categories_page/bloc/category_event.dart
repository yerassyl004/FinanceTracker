import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

class LoadCategoryData extends CategoryEvent {
  const LoadCategoryData();

  @override
  List<Object?> get props => [];
}