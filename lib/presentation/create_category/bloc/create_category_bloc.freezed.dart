// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCategoryData data) create,
    required TResult Function(CreateCategoryData data) edit,
    required TResult Function(CreateCategoryData data) update,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryData data)? create,
    TResult? Function(CreateCategoryData data)? edit,
    TResult? Function(CreateCategoryData data)? update,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCategoryData data)? create,
    TResult Function(CreateCategoryData data)? edit,
    TResult Function(CreateCategoryData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewCategory value) create,
    required TResult Function(EditNewCategory value) edit,
    required TResult Function(UpdateNewCategory value) update,
    required TResult Function(InitNewCategory value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewCategory value)? create,
    TResult? Function(EditNewCategory value)? edit,
    TResult? Function(UpdateNewCategory value)? update,
    TResult? Function(InitNewCategory value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewCategory value)? create,
    TResult Function(EditNewCategory value)? edit,
    TResult Function(UpdateNewCategory value)? update,
    TResult Function(InitNewCategory value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryEventCopyWith<$Res> {
  factory $CreateCategoryEventCopyWith(
          CreateCategoryEvent value, $Res Function(CreateCategoryEvent) then) =
      _$CreateCategoryEventCopyWithImpl<$Res, CreateCategoryEvent>;
}

/// @nodoc
class _$CreateCategoryEventCopyWithImpl<$Res, $Val extends CreateCategoryEvent>
    implements $CreateCategoryEventCopyWith<$Res> {
  _$CreateCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateNewCategoryImplCopyWith<$Res> {
  factory _$$CreateNewCategoryImplCopyWith(_$CreateNewCategoryImpl value,
          $Res Function(_$CreateNewCategoryImpl) then) =
      __$$CreateNewCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryData data});

  $CreateCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateNewCategoryImplCopyWithImpl<$Res>
    extends _$CreateCategoryEventCopyWithImpl<$Res, _$CreateNewCategoryImpl>
    implements _$$CreateNewCategoryImplCopyWith<$Res> {
  __$$CreateNewCategoryImplCopyWithImpl(_$CreateNewCategoryImpl _value,
      $Res Function(_$CreateNewCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateNewCategoryImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateCategoryData,
    ));
  }

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateCategoryDataCopyWith<$Res> get data {
    return $CreateCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$CreateNewCategoryImpl implements CreateNewCategory {
  const _$CreateNewCategoryImpl({required this.data});

  @override
  final CreateCategoryData data;

  @override
  String toString() {
    return 'CreateCategoryEvent.create(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewCategoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewCategoryImplCopyWith<_$CreateNewCategoryImpl> get copyWith =>
      __$$CreateNewCategoryImplCopyWithImpl<_$CreateNewCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCategoryData data) create,
    required TResult Function(CreateCategoryData data) edit,
    required TResult Function(CreateCategoryData data) update,
    required TResult Function() init,
  }) {
    return create(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryData data)? create,
    TResult? Function(CreateCategoryData data)? edit,
    TResult? Function(CreateCategoryData data)? update,
    TResult? Function()? init,
  }) {
    return create?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCategoryData data)? create,
    TResult Function(CreateCategoryData data)? edit,
    TResult Function(CreateCategoryData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewCategory value) create,
    required TResult Function(EditNewCategory value) edit,
    required TResult Function(UpdateNewCategory value) update,
    required TResult Function(InitNewCategory value) init,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewCategory value)? create,
    TResult? Function(EditNewCategory value)? edit,
    TResult? Function(UpdateNewCategory value)? update,
    TResult? Function(InitNewCategory value)? init,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewCategory value)? create,
    TResult Function(EditNewCategory value)? edit,
    TResult Function(UpdateNewCategory value)? update,
    TResult Function(InitNewCategory value)? init,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateNewCategory implements CreateCategoryEvent {
  const factory CreateNewCategory({required final CreateCategoryData data}) =
      _$CreateNewCategoryImpl;

  CreateCategoryData get data;

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewCategoryImplCopyWith<_$CreateNewCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditNewCategoryImplCopyWith<$Res> {
  factory _$$EditNewCategoryImplCopyWith(_$EditNewCategoryImpl value,
          $Res Function(_$EditNewCategoryImpl) then) =
      __$$EditNewCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryData data});

  $CreateCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditNewCategoryImplCopyWithImpl<$Res>
    extends _$CreateCategoryEventCopyWithImpl<$Res, _$EditNewCategoryImpl>
    implements _$$EditNewCategoryImplCopyWith<$Res> {
  __$$EditNewCategoryImplCopyWithImpl(
      _$EditNewCategoryImpl _value, $Res Function(_$EditNewCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditNewCategoryImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateCategoryData,
    ));
  }

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateCategoryDataCopyWith<$Res> get data {
    return $CreateCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$EditNewCategoryImpl implements EditNewCategory {
  const _$EditNewCategoryImpl({required this.data});

  @override
  final CreateCategoryData data;

  @override
  String toString() {
    return 'CreateCategoryEvent.edit(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditNewCategoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditNewCategoryImplCopyWith<_$EditNewCategoryImpl> get copyWith =>
      __$$EditNewCategoryImplCopyWithImpl<_$EditNewCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCategoryData data) create,
    required TResult Function(CreateCategoryData data) edit,
    required TResult Function(CreateCategoryData data) update,
    required TResult Function() init,
  }) {
    return edit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryData data)? create,
    TResult? Function(CreateCategoryData data)? edit,
    TResult? Function(CreateCategoryData data)? update,
    TResult? Function()? init,
  }) {
    return edit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCategoryData data)? create,
    TResult Function(CreateCategoryData data)? edit,
    TResult Function(CreateCategoryData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewCategory value) create,
    required TResult Function(EditNewCategory value) edit,
    required TResult Function(UpdateNewCategory value) update,
    required TResult Function(InitNewCategory value) init,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewCategory value)? create,
    TResult? Function(EditNewCategory value)? edit,
    TResult? Function(UpdateNewCategory value)? update,
    TResult? Function(InitNewCategory value)? init,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewCategory value)? create,
    TResult Function(EditNewCategory value)? edit,
    TResult Function(UpdateNewCategory value)? update,
    TResult Function(InitNewCategory value)? init,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditNewCategory implements CreateCategoryEvent {
  const factory EditNewCategory({required final CreateCategoryData data}) =
      _$EditNewCategoryImpl;

  CreateCategoryData get data;

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditNewCategoryImplCopyWith<_$EditNewCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNewCategoryImplCopyWith<$Res> {
  factory _$$UpdateNewCategoryImplCopyWith(_$UpdateNewCategoryImpl value,
          $Res Function(_$UpdateNewCategoryImpl) then) =
      __$$UpdateNewCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryData data});

  $CreateCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateNewCategoryImplCopyWithImpl<$Res>
    extends _$CreateCategoryEventCopyWithImpl<$Res, _$UpdateNewCategoryImpl>
    implements _$$UpdateNewCategoryImplCopyWith<$Res> {
  __$$UpdateNewCategoryImplCopyWithImpl(_$UpdateNewCategoryImpl _value,
      $Res Function(_$UpdateNewCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdateNewCategoryImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateCategoryData,
    ));
  }

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateCategoryDataCopyWith<$Res> get data {
    return $CreateCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UpdateNewCategoryImpl implements UpdateNewCategory {
  const _$UpdateNewCategoryImpl({required this.data});

  @override
  final CreateCategoryData data;

  @override
  String toString() {
    return 'CreateCategoryEvent.update(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNewCategoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNewCategoryImplCopyWith<_$UpdateNewCategoryImpl> get copyWith =>
      __$$UpdateNewCategoryImplCopyWithImpl<_$UpdateNewCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCategoryData data) create,
    required TResult Function(CreateCategoryData data) edit,
    required TResult Function(CreateCategoryData data) update,
    required TResult Function() init,
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryData data)? create,
    TResult? Function(CreateCategoryData data)? edit,
    TResult? Function(CreateCategoryData data)? update,
    TResult? Function()? init,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCategoryData data)? create,
    TResult Function(CreateCategoryData data)? edit,
    TResult Function(CreateCategoryData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewCategory value) create,
    required TResult Function(EditNewCategory value) edit,
    required TResult Function(UpdateNewCategory value) update,
    required TResult Function(InitNewCategory value) init,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewCategory value)? create,
    TResult? Function(EditNewCategory value)? edit,
    TResult? Function(UpdateNewCategory value)? update,
    TResult? Function(InitNewCategory value)? init,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewCategory value)? create,
    TResult Function(EditNewCategory value)? edit,
    TResult Function(UpdateNewCategory value)? update,
    TResult Function(InitNewCategory value)? init,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateNewCategory implements CreateCategoryEvent {
  const factory UpdateNewCategory({required final CreateCategoryData data}) =
      _$UpdateNewCategoryImpl;

  CreateCategoryData get data;

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNewCategoryImplCopyWith<_$UpdateNewCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitNewCategoryImplCopyWith<$Res> {
  factory _$$InitNewCategoryImplCopyWith(_$InitNewCategoryImpl value,
          $Res Function(_$InitNewCategoryImpl) then) =
      __$$InitNewCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitNewCategoryImplCopyWithImpl<$Res>
    extends _$CreateCategoryEventCopyWithImpl<$Res, _$InitNewCategoryImpl>
    implements _$$InitNewCategoryImplCopyWith<$Res> {
  __$$InitNewCategoryImplCopyWithImpl(
      _$InitNewCategoryImpl _value, $Res Function(_$InitNewCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitNewCategoryImpl implements InitNewCategory {
  const _$InitNewCategoryImpl();

  @override
  String toString() {
    return 'CreateCategoryEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitNewCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCategoryData data) create,
    required TResult Function(CreateCategoryData data) edit,
    required TResult Function(CreateCategoryData data) update,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCategoryData data)? create,
    TResult? Function(CreateCategoryData data)? edit,
    TResult? Function(CreateCategoryData data)? update,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCategoryData data)? create,
    TResult Function(CreateCategoryData data)? edit,
    TResult Function(CreateCategoryData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewCategory value) create,
    required TResult Function(EditNewCategory value) edit,
    required TResult Function(UpdateNewCategory value) update,
    required TResult Function(InitNewCategory value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewCategory value)? create,
    TResult? Function(EditNewCategory value)? edit,
    TResult? Function(UpdateNewCategory value)? update,
    TResult? Function(InitNewCategory value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewCategory value)? create,
    TResult Function(EditNewCategory value)? edit,
    TResult Function(UpdateNewCategory value)? update,
    TResult Function(InitNewCategory value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitNewCategory implements CreateCategoryEvent {
  const factory InitNewCategory() = _$InitNewCategoryImpl;
}

/// @nodoc
mixin _$CreateCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateCategoryData data) show,
    required TResult Function(CreateCategoryData data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateCategoryData data)? show,
    TResult? Function(CreateCategoryData data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateCategoryData data)? show,
    TResult Function(CreateCategoryData data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCreateCategoryState value) initial,
    required TResult Function(ShowCreateCategoryState value) show,
    required TResult Function(SuccessCreateCategoryState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateCategoryState value)? initial,
    TResult? Function(ShowCreateCategoryState value)? show,
    TResult? Function(SuccessCreateCategoryState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateCategoryState value)? initial,
    TResult Function(ShowCreateCategoryState value)? show,
    TResult Function(SuccessCreateCategoryState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryStateCopyWith<$Res> {
  factory $CreateCategoryStateCopyWith(
          CreateCategoryState value, $Res Function(CreateCategoryState) then) =
      _$CreateCategoryStateCopyWithImpl<$Res, CreateCategoryState>;
}

/// @nodoc
class _$CreateCategoryStateCopyWithImpl<$Res, $Val extends CreateCategoryState>
    implements $CreateCategoryStateCopyWith<$Res> {
  _$CreateCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCreateCategoryStateImplCopyWith<$Res> {
  factory _$$InitialCreateCategoryStateImplCopyWith(
          _$InitialCreateCategoryStateImpl value,
          $Res Function(_$InitialCreateCategoryStateImpl) then) =
      __$$InitialCreateCategoryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCreateCategoryStateImplCopyWithImpl<$Res>
    extends _$CreateCategoryStateCopyWithImpl<$Res,
        _$InitialCreateCategoryStateImpl>
    implements _$$InitialCreateCategoryStateImplCopyWith<$Res> {
  __$$InitialCreateCategoryStateImplCopyWithImpl(
      _$InitialCreateCategoryStateImpl _value,
      $Res Function(_$InitialCreateCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCreateCategoryStateImpl implements InitialCreateCategoryState {
  const _$InitialCreateCategoryStateImpl();

  @override
  String toString() {
    return 'CreateCategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCreateCategoryStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateCategoryData data) show,
    required TResult Function(CreateCategoryData data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateCategoryData data)? show,
    TResult? Function(CreateCategoryData data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateCategoryData data)? show,
    TResult Function(CreateCategoryData data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCreateCategoryState value) initial,
    required TResult Function(ShowCreateCategoryState value) show,
    required TResult Function(SuccessCreateCategoryState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateCategoryState value)? initial,
    TResult? Function(ShowCreateCategoryState value)? show,
    TResult? Function(SuccessCreateCategoryState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateCategoryState value)? initial,
    TResult Function(ShowCreateCategoryState value)? show,
    TResult Function(SuccessCreateCategoryState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCreateCategoryState implements CreateCategoryState {
  const factory InitialCreateCategoryState() = _$InitialCreateCategoryStateImpl;
}

/// @nodoc
abstract class _$$ShowCreateCategoryStateImplCopyWith<$Res> {
  factory _$$ShowCreateCategoryStateImplCopyWith(
          _$ShowCreateCategoryStateImpl value,
          $Res Function(_$ShowCreateCategoryStateImpl) then) =
      __$$ShowCreateCategoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryData data});

  $CreateCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowCreateCategoryStateImplCopyWithImpl<$Res>
    extends _$CreateCategoryStateCopyWithImpl<$Res,
        _$ShowCreateCategoryStateImpl>
    implements _$$ShowCreateCategoryStateImplCopyWith<$Res> {
  __$$ShowCreateCategoryStateImplCopyWithImpl(
      _$ShowCreateCategoryStateImpl _value,
      $Res Function(_$ShowCreateCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowCreateCategoryStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateCategoryData,
    ));
  }

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateCategoryDataCopyWith<$Res> get data {
    return $CreateCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ShowCreateCategoryStateImpl implements ShowCreateCategoryState {
  const _$ShowCreateCategoryStateImpl({required this.data});

  @override
  final CreateCategoryData data;

  @override
  String toString() {
    return 'CreateCategoryState.show(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCreateCategoryStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCreateCategoryStateImplCopyWith<_$ShowCreateCategoryStateImpl>
      get copyWith => __$$ShowCreateCategoryStateImplCopyWithImpl<
          _$ShowCreateCategoryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateCategoryData data) show,
    required TResult Function(CreateCategoryData data) success,
  }) {
    return show(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateCategoryData data)? show,
    TResult? Function(CreateCategoryData data)? success,
  }) {
    return show?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateCategoryData data)? show,
    TResult Function(CreateCategoryData data)? success,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCreateCategoryState value) initial,
    required TResult Function(ShowCreateCategoryState value) show,
    required TResult Function(SuccessCreateCategoryState value) success,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateCategoryState value)? initial,
    TResult? Function(ShowCreateCategoryState value)? show,
    TResult? Function(SuccessCreateCategoryState value)? success,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateCategoryState value)? initial,
    TResult Function(ShowCreateCategoryState value)? show,
    TResult Function(SuccessCreateCategoryState value)? success,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowCreateCategoryState implements CreateCategoryState {
  const factory ShowCreateCategoryState(
      {required final CreateCategoryData data}) = _$ShowCreateCategoryStateImpl;

  CreateCategoryData get data;

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCreateCategoryStateImplCopyWith<_$ShowCreateCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateCategoryStateImplCopyWith<$Res> {
  factory _$$SuccessCreateCategoryStateImplCopyWith(
          _$SuccessCreateCategoryStateImpl value,
          $Res Function(_$SuccessCreateCategoryStateImpl) then) =
      __$$SuccessCreateCategoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCategoryData data});

  $CreateCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessCreateCategoryStateImplCopyWithImpl<$Res>
    extends _$CreateCategoryStateCopyWithImpl<$Res,
        _$SuccessCreateCategoryStateImpl>
    implements _$$SuccessCreateCategoryStateImplCopyWith<$Res> {
  __$$SuccessCreateCategoryStateImplCopyWithImpl(
      _$SuccessCreateCategoryStateImpl _value,
      $Res Function(_$SuccessCreateCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessCreateCategoryStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateCategoryData,
    ));
  }

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateCategoryDataCopyWith<$Res> get data {
    return $CreateCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessCreateCategoryStateImpl implements SuccessCreateCategoryState {
  const _$SuccessCreateCategoryStateImpl({required this.data});

  @override
  final CreateCategoryData data;

  @override
  String toString() {
    return 'CreateCategoryState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateCategoryStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateCategoryStateImplCopyWith<_$SuccessCreateCategoryStateImpl>
      get copyWith => __$$SuccessCreateCategoryStateImplCopyWithImpl<
          _$SuccessCreateCategoryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateCategoryData data) show,
    required TResult Function(CreateCategoryData data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateCategoryData data)? show,
    TResult? Function(CreateCategoryData data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateCategoryData data)? show,
    TResult Function(CreateCategoryData data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCreateCategoryState value) initial,
    required TResult Function(ShowCreateCategoryState value) show,
    required TResult Function(SuccessCreateCategoryState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateCategoryState value)? initial,
    TResult? Function(ShowCreateCategoryState value)? show,
    TResult? Function(SuccessCreateCategoryState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateCategoryState value)? initial,
    TResult Function(ShowCreateCategoryState value)? show,
    TResult Function(SuccessCreateCategoryState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessCreateCategoryState implements CreateCategoryState {
  const factory SuccessCreateCategoryState(
          {required final CreateCategoryData data}) =
      _$SuccessCreateCategoryStateImpl;

  CreateCategoryData get data;

  /// Create a copy of CreateCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateCategoryStateImplCopyWith<_$SuccessCreateCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateCategoryData {
  CategoryType get categoryType => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  int get selectedImageIndex => throw _privateConstructorUsedError;
  List<String> get imageAssets => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;

  /// Create a copy of CreateCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCategoryDataCopyWith<CreateCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryDataCopyWith<$Res> {
  factory $CreateCategoryDataCopyWith(
          CreateCategoryData value, $Res Function(CreateCategoryData) then) =
      _$CreateCategoryDataCopyWithImpl<$Res, CreateCategoryData>;
  @useResult
  $Res call(
      {CategoryType categoryType,
      Category? category,
      int selectedImageIndex,
      List<String> imageAssets,
      bool isUpdate});
}

/// @nodoc
class _$CreateCategoryDataCopyWithImpl<$Res, $Val extends CreateCategoryData>
    implements $CreateCategoryDataCopyWith<$Res> {
  _$CreateCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? category = freezed,
    Object? selectedImageIndex = null,
    Object? imageAssets = null,
    Object? isUpdate = null,
  }) {
    return _then(_value.copyWith(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      selectedImageIndex: null == selectedImageIndex
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageAssets: null == imageAssets
          ? _value.imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCategoryDataImplCopyWith<$Res>
    implements $CreateCategoryDataCopyWith<$Res> {
  factory _$$CreateCategoryDataImplCopyWith(_$CreateCategoryDataImpl value,
          $Res Function(_$CreateCategoryDataImpl) then) =
      __$$CreateCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryType categoryType,
      Category? category,
      int selectedImageIndex,
      List<String> imageAssets,
      bool isUpdate});
}

/// @nodoc
class __$$CreateCategoryDataImplCopyWithImpl<$Res>
    extends _$CreateCategoryDataCopyWithImpl<$Res, _$CreateCategoryDataImpl>
    implements _$$CreateCategoryDataImplCopyWith<$Res> {
  __$$CreateCategoryDataImplCopyWithImpl(_$CreateCategoryDataImpl _value,
      $Res Function(_$CreateCategoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? category = freezed,
    Object? selectedImageIndex = null,
    Object? imageAssets = null,
    Object? isUpdate = null,
  }) {
    return _then(_$CreateCategoryDataImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      selectedImageIndex: null == selectedImageIndex
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageAssets: null == imageAssets
          ? _value._imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateCategoryDataImpl implements _CreateCategoryData {
  const _$CreateCategoryDataImpl(
      {this.categoryType = CategoryType.expense,
      this.category = null,
      this.selectedImageIndex = 0,
      final List<String> imageAssets = const [],
      this.isUpdate = false})
      : _imageAssets = imageAssets;

  @override
  @JsonKey()
  final CategoryType categoryType;
  @override
  @JsonKey()
  final Category? category;
  @override
  @JsonKey()
  final int selectedImageIndex;
  final List<String> _imageAssets;
  @override
  @JsonKey()
  List<String> get imageAssets {
    if (_imageAssets is EqualUnmodifiableListView) return _imageAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageAssets);
  }

  @override
  @JsonKey()
  final bool isUpdate;

  @override
  String toString() {
    return 'CreateCategoryData(categoryType: $categoryType, category: $category, selectedImageIndex: $selectedImageIndex, imageAssets: $imageAssets, isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCategoryDataImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.selectedImageIndex, selectedImageIndex) ||
                other.selectedImageIndex == selectedImageIndex) &&
            const DeepCollectionEquality()
                .equals(other._imageAssets, _imageAssets) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryType,
      category,
      selectedImageIndex,
      const DeepCollectionEquality().hash(_imageAssets),
      isUpdate);

  /// Create a copy of CreateCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCategoryDataImplCopyWith<_$CreateCategoryDataImpl> get copyWith =>
      __$$CreateCategoryDataImplCopyWithImpl<_$CreateCategoryDataImpl>(
          this, _$identity);
}

abstract class _CreateCategoryData implements CreateCategoryData {
  const factory _CreateCategoryData(
      {final CategoryType categoryType,
      final Category? category,
      final int selectedImageIndex,
      final List<String> imageAssets,
      final bool isUpdate}) = _$CreateCategoryDataImpl;

  @override
  CategoryType get categoryType;
  @override
  Category? get category;
  @override
  int get selectedImageIndex;
  @override
  List<String> get imageAssets;
  @override
  bool get isUpdate;

  /// Create a copy of CreateCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCategoryDataImplCopyWith<_$CreateCategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
