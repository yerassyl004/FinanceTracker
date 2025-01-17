// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Category account) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Category account)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Category account)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategory value) loadAccounts,
    required TResult Function(DeleteCategory value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategory value)? loadAccounts,
    TResult? Function(DeleteCategory value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategory value)? loadAccounts,
    TResult Function(DeleteCategory value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCategoryImplCopyWith<$Res> {
  factory _$$LoadCategoryImplCopyWith(
          _$LoadCategoryImpl value, $Res Function(_$LoadCategoryImpl) then) =
      __$$LoadCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$LoadCategoryImpl>
    implements _$$LoadCategoryImplCopyWith<$Res> {
  __$$LoadCategoryImplCopyWithImpl(
      _$LoadCategoryImpl _value, $Res Function(_$LoadCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCategoryImpl implements LoadCategory {
  const _$LoadCategoryImpl();

  @override
  String toString() {
    return 'CategoryEvent.loadAccounts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Category account) deleteAccount,
  }) {
    return loadAccounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Category account)? deleteAccount,
  }) {
    return loadAccounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Category account)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loadAccounts != null) {
      return loadAccounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategory value) loadAccounts,
    required TResult Function(DeleteCategory value) deleteAccount,
  }) {
    return loadAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategory value)? loadAccounts,
    TResult? Function(DeleteCategory value)? deleteAccount,
  }) {
    return loadAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategory value)? loadAccounts,
    TResult Function(DeleteCategory value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loadAccounts != null) {
      return loadAccounts(this);
    }
    return orElse();
  }
}

abstract class LoadCategory implements CategoryEvent {
  const factory LoadCategory() = _$LoadCategoryImpl;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category account});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$DeleteCategoryImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl implements DeleteCategory {
  const _$DeleteCategoryImpl(this.account);

  @override
  final Category account;

  @override
  String toString() {
    return 'CategoryEvent.deleteAccount(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Category account) deleteAccount,
  }) {
    return deleteAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Category account)? deleteAccount,
  }) {
    return deleteAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Category account)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategory value) loadAccounts,
    required TResult Function(DeleteCategory value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategory value)? loadAccounts,
    TResult? Function(DeleteCategory value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategory value)? loadAccounts,
    TResult Function(DeleteCategory value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteCategory implements CategoryEvent {
  const factory DeleteCategory(final Category account) = _$DeleteCategoryImpl;

  Category get account;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> income, List<Category> expense)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> income, List<Category> expense)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> income, List<Category> expense)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoaded value) loaded,
    required TResult Function(CategoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoaded value)? loaded,
    TResult? Function(CategoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoaded value)? loaded,
    TResult Function(CategoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryInitialImplCopyWith<$Res> {
  factory _$$CategoryInitialImplCopyWith(_$CategoryInitialImpl value,
          $Res Function(_$CategoryInitialImpl) then) =
      __$$CategoryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryInitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryInitialImpl>
    implements _$$CategoryInitialImplCopyWith<$Res> {
  __$$CategoryInitialImplCopyWithImpl(
      _$CategoryInitialImpl _value, $Res Function(_$CategoryInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryInitialImpl implements CategoryInitial {
  const _$CategoryInitialImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> income, List<Category> expense)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> income, List<Category> expense)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> income, List<Category> expense)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoaded value) loaded,
    required TResult Function(CategoryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoaded value)? loaded,
    TResult? Function(CategoryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoaded value)? loaded,
    TResult Function(CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryInitial implements CategoryState {
  const factory CategoryInitial() = _$CategoryInitialImpl;
}

/// @nodoc
abstract class _$$CategoryLoadingImplCopyWith<$Res> {
  factory _$$CategoryLoadingImplCopyWith(_$CategoryLoadingImpl value,
          $Res Function(_$CategoryLoadingImpl) then) =
      __$$CategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadingImpl>
    implements _$$CategoryLoadingImplCopyWith<$Res> {
  __$$CategoryLoadingImplCopyWithImpl(
      _$CategoryLoadingImpl _value, $Res Function(_$CategoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryLoadingImpl implements CategoryLoading {
  const _$CategoryLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> income, List<Category> expense)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> income, List<Category> expense)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> income, List<Category> expense)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoaded value) loaded,
    required TResult Function(CategoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoaded value)? loaded,
    TResult? Function(CategoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoaded value)? loaded,
    TResult Function(CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoading implements CategoryState {
  const factory CategoryLoading() = _$CategoryLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryLoadedImplCopyWith<$Res> {
  factory _$$CategoryLoadedImplCopyWith(_$CategoryLoadedImpl value,
          $Res Function(_$CategoryLoadedImpl) then) =
      __$$CategoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> income, List<Category> expense});
}

/// @nodoc
class __$$CategoryLoadedImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadedImpl>
    implements _$$CategoryLoadedImplCopyWith<$Res> {
  __$$CategoryLoadedImplCopyWithImpl(
      _$CategoryLoadedImpl _value, $Res Function(_$CategoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
    Object? expense = null,
  }) {
    return _then(_$CategoryLoadedImpl(
      null == income
          ? _value._income
          : income // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      null == expense
          ? _value._expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedImpl implements CategoryLoaded {
  const _$CategoryLoadedImpl(
      final List<Category> income, final List<Category> expense)
      : _income = income,
        _expense = expense;

  final List<Category> _income;
  @override
  List<Category> get income {
    if (_income is EqualUnmodifiableListView) return _income;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_income);
  }

  final List<Category> _expense;
  @override
  List<Category> get expense {
    if (_expense is EqualUnmodifiableListView) return _expense;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expense);
  }

  @override
  String toString() {
    return 'CategoryState.loaded(income: $income, expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._income, _income) &&
            const DeepCollectionEquality().equals(other._expense, _expense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_income),
      const DeepCollectionEquality().hash(_expense));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadedImplCopyWith<_$CategoryLoadedImpl> get copyWith =>
      __$$CategoryLoadedImplCopyWithImpl<_$CategoryLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> income, List<Category> expense)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(income, expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> income, List<Category> expense)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(income, expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> income, List<Category> expense)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(income, expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoaded value) loaded,
    required TResult Function(CategoryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoaded value)? loaded,
    TResult? Function(CategoryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoaded value)? loaded,
    TResult Function(CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoaded implements CategoryState {
  const factory CategoryLoaded(
          final List<Category> income, final List<Category> expense) =
      _$CategoryLoadedImpl;

  List<Category> get income;
  List<Category> get expense;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLoadedImplCopyWith<_$CategoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorImplCopyWith<$Res> {
  factory _$$CategoryErrorImplCopyWith(
          _$CategoryErrorImpl value, $Res Function(_$CategoryErrorImpl) then) =
      __$$CategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CategoryErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryErrorImpl>
    implements _$$CategoryErrorImplCopyWith<$Res> {
  __$$CategoryErrorImplCopyWithImpl(
      _$CategoryErrorImpl _value, $Res Function(_$CategoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CategoryErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryErrorImpl implements CategoryError {
  const _$CategoryErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      __$$CategoryErrorImplCopyWithImpl<_$CategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> income, List<Category> expense)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> income, List<Category> expense)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> income, List<Category> expense)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoaded value) loaded,
    required TResult Function(CategoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoaded value)? loaded,
    TResult? Function(CategoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoaded value)? loaded,
    TResult Function(CategoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryError implements CategoryState {
  const factory CategoryError(final String message) = _$CategoryErrorImpl;

  String get message;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
