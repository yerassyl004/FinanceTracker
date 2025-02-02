import 'package:finance_app/domain/usecases.dart/category/create_category_usecase.dart';
import 'package:finance_app/domain/usecases.dart/category/update_category_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/category.dart';

part 'create_category_bloc.freezed.dart';

@freezed
class CreateCategoryEvent with _$CreateCategoryEvent {
  const factory CreateCategoryEvent.create({required CreateCategoryData data}) =
      CreateNewCategory;
  const factory CreateCategoryEvent.edit({required CreateCategoryData data}) =
      EditNewCategory;
  const factory CreateCategoryEvent.update({required CreateCategoryData data}) =
      UpdateNewCategory;
  const factory CreateCategoryEvent.init() = InitNewCategory;
}

@freezed
class CreateCategoryState with _$CreateCategoryState {
  const factory CreateCategoryState.initial() = InitialCreateCategoryState;
  const factory CreateCategoryState.show({required CreateCategoryData data}) =
      ShowCreateCategoryState;
  const factory CreateCategoryState.success(
      {required CreateCategoryData data}) = SuccessCreateCategoryState;
}

@freezed
class CreateCategoryData with _$CreateCategoryData {
  const factory CreateCategoryData({
    @Default(CategoryType.expense) CategoryType categoryType,
    @Default(null) Category? category,
    @Default(0) int selectedImageIndex,
    @Default([]) List<String> imageAssets,
    @Default(false) bool isUpdate,
  }) = _CreateCategoryData;
}

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  final Category? initialCategory;
  final CreateCategoryUsecase createCategoryUsecase;
  final UpdateCategoryUsecase updateCategoryUsecase;

  CreateCategoryBloc(this.initialCategory, this.createCategoryUsecase,
      this.updateCategoryUsecase)
      : super(CreateCategoryState.initial()) {
    on<CreateNewCategory>(_create);
    on<EditNewCategory>(_edit);
    on<UpdateNewCategory>(_update);
    on<InitNewCategory>(_init);

    add(CreateCategoryEvent.init());
  }

  Future<void> _init(
      InitNewCategory event, Emitter<CreateCategoryState> emit) async {
    final imageExpenseAssets = getCategoryImages(CategoryType.expense);
    final newData = CreateCategoryData(
        category: initialCategory != null
            ? initialCategory!
            : Category(
                icon: imageExpenseAssets[0],
                title: '',
                type: CategoryType.expense),
        selectedImageIndex: initialCategory != null
            ? imageExpenseAssets.indexOf(initialCategory!.icon)
            : 0,
        imageAssets: imageExpenseAssets);
    debugPrint(newData.category?.title);
    debugPrint(initialCategory?.id);
    emit(CreateCategoryState.show(data: newData));
  }

  Future<void> _edit(
      EditNewCategory event, Emitter<CreateCategoryState> emit) async {
    debugPrint(event.data.category?.type.name);
    final imageAssets = getCategoryImages(event.data.categoryType);
    final data = event.data;
    final newData = data.copyWith(
      imageAssets: imageAssets,
        category: data.category?.copyWith(
      type: data.categoryType,
      icon: imageAssets[data.selectedImageIndex],

    ));

    emit(CreateCategoryState.show(data: newData));
  }

  Future<void> _create(
      CreateNewCategory event, Emitter<CreateCategoryState> emit) async {
    if (isValid(event.data.category)) {
      if (initialCategory == null) {
        await createCategoryUsecase.execute(event.data.category!);
      } else {
        await updateCategoryUsecase.execute(event.data.category!);
      }
      emit(CreateCategoryState.success(data: event.data));
    }
    emit(CreateCategoryState.show(data: event.data));
  }

  bool isValid(Category? category) {
    if (category?.title == '') {
      return false;
    }
    return true;
  }

  Future<void> _update(
      UpdateNewCategory event, Emitter<CreateCategoryState> emit) async {}
}
