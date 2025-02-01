// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionCategoryEvent {
  Category get category => throw _privateConstructorUsedError;
  DateTime get selectedMonth => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category, DateTime selectedMonth)
        loadTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category, DateTime selectedMonth)?
        loadTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, DateTime selectedMonth)?
        loadTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsCategory value) loadTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsCategory value)? loadTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsCategory value)? loadTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransactionCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCategoryEventCopyWith<TransactionCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryEventCopyWith<$Res> {
  factory $TransactionCategoryEventCopyWith(TransactionCategoryEvent value,
          $Res Function(TransactionCategoryEvent) then) =
      _$TransactionCategoryEventCopyWithImpl<$Res, TransactionCategoryEvent>;
  @useResult
  $Res call({Category category, DateTime selectedMonth});
}

/// @nodoc
class _$TransactionCategoryEventCopyWithImpl<$Res,
        $Val extends TransactionCategoryEvent>
    implements $TransactionCategoryEventCopyWith<$Res> {
  _$TransactionCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? selectedMonth = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadTransactionsCategoryImplCopyWith<$Res>
    implements $TransactionCategoryEventCopyWith<$Res> {
  factory _$$LoadTransactionsCategoryImplCopyWith(
          _$LoadTransactionsCategoryImpl value,
          $Res Function(_$LoadTransactionsCategoryImpl) then) =
      __$$LoadTransactionsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category category, DateTime selectedMonth});
}

/// @nodoc
class __$$LoadTransactionsCategoryImplCopyWithImpl<$Res>
    extends _$TransactionCategoryEventCopyWithImpl<$Res,
        _$LoadTransactionsCategoryImpl>
    implements _$$LoadTransactionsCategoryImplCopyWith<$Res> {
  __$$LoadTransactionsCategoryImplCopyWithImpl(
      _$LoadTransactionsCategoryImpl _value,
      $Res Function(_$LoadTransactionsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? selectedMonth = null,
  }) {
    return _then(_$LoadTransactionsCategoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadTransactionsCategoryImpl implements LoadTransactionsCategory {
  const _$LoadTransactionsCategoryImpl(
      {required this.category, required this.selectedMonth});

  @override
  final Category category;
  @override
  final DateTime selectedMonth;

  @override
  String toString() {
    return 'TransactionCategoryEvent.loadTransactions(category: $category, selectedMonth: $selectedMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionsCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, selectedMonth);

  /// Create a copy of TransactionCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionsCategoryImplCopyWith<_$LoadTransactionsCategoryImpl>
      get copyWith => __$$LoadTransactionsCategoryImplCopyWithImpl<
          _$LoadTransactionsCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category, DateTime selectedMonth)
        loadTransactions,
  }) {
    return loadTransactions(category, selectedMonth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category, DateTime selectedMonth)?
        loadTransactions,
  }) {
    return loadTransactions?.call(category, selectedMonth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, DateTime selectedMonth)?
        loadTransactions,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(category, selectedMonth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsCategory value) loadTransactions,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsCategory value)? loadTransactions,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsCategory value)? loadTransactions,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionsCategory implements TransactionCategoryEvent {
  const factory LoadTransactionsCategory(
      {required final Category category,
      required final DateTime selectedMonth}) = _$LoadTransactionsCategoryImpl;

  @override
  Category get category;
  @override
  DateTime get selectedMonth;

  /// Create a copy of TransactionCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransactionsCategoryImplCopyWith<_$LoadTransactionsCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> transactions) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> transactions)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> transactions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCategoryInitial value) initial,
    required TResult Function(TransactionCategoryLoading value) loading,
    required TResult Function(TransactionCategoryLoaded value) loaded,
    required TResult Function(TransactionCategoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCategoryInitial value)? initial,
    TResult? Function(TransactionCategoryLoading value)? loading,
    TResult? Function(TransactionCategoryLoaded value)? loaded,
    TResult? Function(TransactionCategoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCategoryInitial value)? initial,
    TResult Function(TransactionCategoryLoading value)? loading,
    TResult Function(TransactionCategoryLoaded value)? loaded,
    TResult Function(TransactionCategoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryStateCopyWith<$Res> {
  factory $TransactionCategoryStateCopyWith(TransactionCategoryState value,
          $Res Function(TransactionCategoryState) then) =
      _$TransactionCategoryStateCopyWithImpl<$Res, TransactionCategoryState>;
}

/// @nodoc
class _$TransactionCategoryStateCopyWithImpl<$Res,
        $Val extends TransactionCategoryState>
    implements $TransactionCategoryStateCopyWith<$Res> {
  _$TransactionCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionCategoryInitialImplCopyWith<$Res> {
  factory _$$TransactionCategoryInitialImplCopyWith(
          _$TransactionCategoryInitialImpl value,
          $Res Function(_$TransactionCategoryInitialImpl) then) =
      __$$TransactionCategoryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionCategoryInitialImplCopyWithImpl<$Res>
    extends _$TransactionCategoryStateCopyWithImpl<$Res,
        _$TransactionCategoryInitialImpl>
    implements _$$TransactionCategoryInitialImplCopyWith<$Res> {
  __$$TransactionCategoryInitialImplCopyWithImpl(
      _$TransactionCategoryInitialImpl _value,
      $Res Function(_$TransactionCategoryInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionCategoryInitialImpl implements TransactionCategoryInitial {
  const _$TransactionCategoryInitialImpl();

  @override
  String toString() {
    return 'TransactionCategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> transactions)? loaded,
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
    required TResult Function(TransactionCategoryInitial value) initial,
    required TResult Function(TransactionCategoryLoading value) loading,
    required TResult Function(TransactionCategoryLoaded value) loaded,
    required TResult Function(TransactionCategoryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCategoryInitial value)? initial,
    TResult? Function(TransactionCategoryLoading value)? loading,
    TResult? Function(TransactionCategoryLoaded value)? loaded,
    TResult? Function(TransactionCategoryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCategoryInitial value)? initial,
    TResult Function(TransactionCategoryLoading value)? loading,
    TResult Function(TransactionCategoryLoaded value)? loaded,
    TResult Function(TransactionCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionCategoryInitial implements TransactionCategoryState {
  const factory TransactionCategoryInitial() = _$TransactionCategoryInitialImpl;
}

/// @nodoc
abstract class _$$TransactionCategoryLoadingImplCopyWith<$Res> {
  factory _$$TransactionCategoryLoadingImplCopyWith(
          _$TransactionCategoryLoadingImpl value,
          $Res Function(_$TransactionCategoryLoadingImpl) then) =
      __$$TransactionCategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionCategoryLoadingImplCopyWithImpl<$Res>
    extends _$TransactionCategoryStateCopyWithImpl<$Res,
        _$TransactionCategoryLoadingImpl>
    implements _$$TransactionCategoryLoadingImplCopyWith<$Res> {
  __$$TransactionCategoryLoadingImplCopyWithImpl(
      _$TransactionCategoryLoadingImpl _value,
      $Res Function(_$TransactionCategoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionCategoryLoadingImpl implements TransactionCategoryLoading {
  const _$TransactionCategoryLoadingImpl();

  @override
  String toString() {
    return 'TransactionCategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> transactions)? loaded,
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
    required TResult Function(TransactionCategoryInitial value) initial,
    required TResult Function(TransactionCategoryLoading value) loading,
    required TResult Function(TransactionCategoryLoaded value) loaded,
    required TResult Function(TransactionCategoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCategoryInitial value)? initial,
    TResult? Function(TransactionCategoryLoading value)? loading,
    TResult? Function(TransactionCategoryLoaded value)? loaded,
    TResult? Function(TransactionCategoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCategoryInitial value)? initial,
    TResult Function(TransactionCategoryLoading value)? loading,
    TResult Function(TransactionCategoryLoaded value)? loaded,
    TResult Function(TransactionCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionCategoryLoading implements TransactionCategoryState {
  const factory TransactionCategoryLoading() = _$TransactionCategoryLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionCategoryLoadedImplCopyWith<$Res> {
  factory _$$TransactionCategoryLoadedImplCopyWith(
          _$TransactionCategoryLoadedImpl value,
          $Res Function(_$TransactionCategoryLoadedImpl) then) =
      __$$TransactionCategoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionCategoryLoadedImplCopyWithImpl<$Res>
    extends _$TransactionCategoryStateCopyWithImpl<$Res,
        _$TransactionCategoryLoadedImpl>
    implements _$$TransactionCategoryLoadedImplCopyWith<$Res> {
  __$$TransactionCategoryLoadedImplCopyWithImpl(
      _$TransactionCategoryLoadedImpl _value,
      $Res Function(_$TransactionCategoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionCategoryLoadedImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionCategoryLoadedImpl implements TransactionCategoryLoaded {
  const _$TransactionCategoryLoadedImpl(
      {required final List<Transaction> transactions})
      : _transactions = transactions;

  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionCategoryState.loaded(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCategoryLoadedImplCopyWith<_$TransactionCategoryLoadedImpl>
      get copyWith => __$$TransactionCategoryLoadedImplCopyWithImpl<
          _$TransactionCategoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> transactions)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCategoryInitial value) initial,
    required TResult Function(TransactionCategoryLoading value) loading,
    required TResult Function(TransactionCategoryLoaded value) loaded,
    required TResult Function(TransactionCategoryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCategoryInitial value)? initial,
    TResult? Function(TransactionCategoryLoading value)? loading,
    TResult? Function(TransactionCategoryLoaded value)? loaded,
    TResult? Function(TransactionCategoryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCategoryInitial value)? initial,
    TResult Function(TransactionCategoryLoading value)? loading,
    TResult Function(TransactionCategoryLoaded value)? loaded,
    TResult Function(TransactionCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionCategoryLoaded implements TransactionCategoryState {
  const factory TransactionCategoryLoaded(
          {required final List<Transaction> transactions}) =
      _$TransactionCategoryLoadedImpl;

  List<Transaction> get transactions;

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCategoryLoadedImplCopyWith<_$TransactionCategoryLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionCategoryErrorImplCopyWith<$Res> {
  factory _$$TransactionCategoryErrorImplCopyWith(
          _$TransactionCategoryErrorImpl value,
          $Res Function(_$TransactionCategoryErrorImpl) then) =
      __$$TransactionCategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransactionCategoryErrorImplCopyWithImpl<$Res>
    extends _$TransactionCategoryStateCopyWithImpl<$Res,
        _$TransactionCategoryErrorImpl>
    implements _$$TransactionCategoryErrorImplCopyWith<$Res> {
  __$$TransactionCategoryErrorImplCopyWithImpl(
      _$TransactionCategoryErrorImpl _value,
      $Res Function(_$TransactionCategoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransactionCategoryErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionCategoryErrorImpl implements TransactionCategoryError {
  const _$TransactionCategoryErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionCategoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCategoryErrorImplCopyWith<_$TransactionCategoryErrorImpl>
      get copyWith => __$$TransactionCategoryErrorImplCopyWithImpl<
          _$TransactionCategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Transaction> transactions) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Transaction> transactions)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Transaction> transactions)? loaded,
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
    required TResult Function(TransactionCategoryInitial value) initial,
    required TResult Function(TransactionCategoryLoading value) loading,
    required TResult Function(TransactionCategoryLoaded value) loaded,
    required TResult Function(TransactionCategoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCategoryInitial value)? initial,
    TResult? Function(TransactionCategoryLoading value)? loading,
    TResult? Function(TransactionCategoryLoaded value)? loaded,
    TResult? Function(TransactionCategoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCategoryInitial value)? initial,
    TResult Function(TransactionCategoryLoading value)? loading,
    TResult Function(TransactionCategoryLoaded value)? loaded,
    TResult Function(TransactionCategoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionCategoryError implements TransactionCategoryState {
  const factory TransactionCategoryError({required final String message}) =
      _$TransactionCategoryErrorImpl;

  String get message;

  /// Create a copy of TransactionCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCategoryErrorImplCopyWith<_$TransactionCategoryErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
