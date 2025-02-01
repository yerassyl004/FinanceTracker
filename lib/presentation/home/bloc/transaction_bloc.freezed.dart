// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionData {
  DateTime get currentMonth => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  double get expenseAmount => throw _privateConstructorUsedError;
  double get incomeAmount => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {DateTime currentMonth,
      List<Transaction> transactions,
      double expenseAmount,
      double incomeAmount,
      String? errorMessage});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? transactions = null,
    Object? expenseAmount = null,
    Object? incomeAmount = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentMonth,
      List<Transaction> transactions,
      double expenseAmount,
      double incomeAmount,
      String? errorMessage});
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? transactions = null,
    Object? expenseAmount = null,
    Object? incomeAmount = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TransactionDataImpl(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionDataImpl implements _TransactionData {
  const _$TransactionDataImpl(
      {required this.currentMonth,
      required final List<Transaction> transactions,
      this.expenseAmount = 0,
      this.incomeAmount = 0,
      this.errorMessage})
      : _transactions = transactions;

  @override
  final DateTime currentMonth;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final double expenseAmount;
  @override
  @JsonKey()
  final double incomeAmount;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TransactionData(currentMonth: $currentMonth, transactions: $transactions, expenseAmount: $expenseAmount, incomeAmount: $incomeAmount, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.expenseAmount, expenseAmount) ||
                other.expenseAmount == expenseAmount) &&
            (identical(other.incomeAmount, incomeAmount) ||
                other.incomeAmount == incomeAmount) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentMonth,
      const DeepCollectionEquality().hash(_transactions),
      expenseAmount,
      incomeAmount,
      errorMessage);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {required final DateTime currentMonth,
      required final List<Transaction> transactions,
      final double expenseAmount,
      final double incomeAmount,
      final String? errorMessage}) = _$TransactionDataImpl;

  @override
  DateTime get currentMonth;
  @override
  List<Transaction> get transactions;
  @override
  double get expenseAmount;
  @override
  double get incomeAmount;
  @override
  String? get errorMessage;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime month) loadTransactionItems,
    required TResult Function(DateTime month) updateTransactionItems,
    required TResult Function(TransactionData data, DateTime month)
        getExpenseAmount,
    required TResult Function(List<Transaction> transactions) getIncomeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime month)? loadTransactionItems,
    TResult? Function(DateTime month)? updateTransactionItems,
    TResult? Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult? Function(List<Transaction> transactions)? getIncomeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime month)? loadTransactionItems,
    TResult Function(DateTime month)? updateTransactionItems,
    TResult Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult Function(List<Transaction> transactions)? getIncomeAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionItems value) loadTransactionItems,
    required TResult Function(UpdateTransactionItems value)
        updateTransactionItems,
    required TResult Function(GetExpenseAmount value) getExpenseAmount,
    required TResult Function(GetIncomeAmount value) getIncomeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionItems value)? loadTransactionItems,
    TResult? Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult? Function(GetExpenseAmount value)? getExpenseAmount,
    TResult? Function(GetIncomeAmount value)? getIncomeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionItems value)? loadTransactionItems,
    TResult Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult Function(GetExpenseAmount value)? getExpenseAmount,
    TResult Function(GetIncomeAmount value)? getIncomeAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTransactionItemsImplCopyWith<$Res> {
  factory _$$LoadTransactionItemsImplCopyWith(_$LoadTransactionItemsImpl value,
          $Res Function(_$LoadTransactionItemsImpl) then) =
      __$$LoadTransactionItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime month});
}

/// @nodoc
class __$$LoadTransactionItemsImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$LoadTransactionItemsImpl>
    implements _$$LoadTransactionItemsImplCopyWith<$Res> {
  __$$LoadTransactionItemsImplCopyWithImpl(_$LoadTransactionItemsImpl _value,
      $Res Function(_$LoadTransactionItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_$LoadTransactionItemsImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadTransactionItemsImpl implements LoadTransactionItems {
  const _$LoadTransactionItemsImpl({required this.month});

  @override
  final DateTime month;

  @override
  String toString() {
    return 'TransactionEvent.loadTransactionItems(month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionItemsImpl &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionItemsImplCopyWith<_$LoadTransactionItemsImpl>
      get copyWith =>
          __$$LoadTransactionItemsImplCopyWithImpl<_$LoadTransactionItemsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime month) loadTransactionItems,
    required TResult Function(DateTime month) updateTransactionItems,
    required TResult Function(TransactionData data, DateTime month)
        getExpenseAmount,
    required TResult Function(List<Transaction> transactions) getIncomeAmount,
  }) {
    return loadTransactionItems(month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime month)? loadTransactionItems,
    TResult? Function(DateTime month)? updateTransactionItems,
    TResult? Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult? Function(List<Transaction> transactions)? getIncomeAmount,
  }) {
    return loadTransactionItems?.call(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime month)? loadTransactionItems,
    TResult Function(DateTime month)? updateTransactionItems,
    TResult Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult Function(List<Transaction> transactions)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (loadTransactionItems != null) {
      return loadTransactionItems(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionItems value) loadTransactionItems,
    required TResult Function(UpdateTransactionItems value)
        updateTransactionItems,
    required TResult Function(GetExpenseAmount value) getExpenseAmount,
    required TResult Function(GetIncomeAmount value) getIncomeAmount,
  }) {
    return loadTransactionItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionItems value)? loadTransactionItems,
    TResult? Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult? Function(GetExpenseAmount value)? getExpenseAmount,
    TResult? Function(GetIncomeAmount value)? getIncomeAmount,
  }) {
    return loadTransactionItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionItems value)? loadTransactionItems,
    TResult Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult Function(GetExpenseAmount value)? getExpenseAmount,
    TResult Function(GetIncomeAmount value)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (loadTransactionItems != null) {
      return loadTransactionItems(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionItems implements TransactionEvent {
  const factory LoadTransactionItems({required final DateTime month}) =
      _$LoadTransactionItemsImpl;

  DateTime get month;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransactionItemsImplCopyWith<_$LoadTransactionItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionItemsImplCopyWith<$Res> {
  factory _$$UpdateTransactionItemsImplCopyWith(
          _$UpdateTransactionItemsImpl value,
          $Res Function(_$UpdateTransactionItemsImpl) then) =
      __$$UpdateTransactionItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime month});
}

/// @nodoc
class __$$UpdateTransactionItemsImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$UpdateTransactionItemsImpl>
    implements _$$UpdateTransactionItemsImplCopyWith<$Res> {
  __$$UpdateTransactionItemsImplCopyWithImpl(
      _$UpdateTransactionItemsImpl _value,
      $Res Function(_$UpdateTransactionItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_$UpdateTransactionItemsImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionItemsImpl implements UpdateTransactionItems {
  const _$UpdateTransactionItemsImpl({required this.month});

  @override
  final DateTime month;

  @override
  String toString() {
    return 'TransactionEvent.updateTransactionItems(month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionItemsImpl &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionItemsImplCopyWith<_$UpdateTransactionItemsImpl>
      get copyWith => __$$UpdateTransactionItemsImplCopyWithImpl<
          _$UpdateTransactionItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime month) loadTransactionItems,
    required TResult Function(DateTime month) updateTransactionItems,
    required TResult Function(TransactionData data, DateTime month)
        getExpenseAmount,
    required TResult Function(List<Transaction> transactions) getIncomeAmount,
  }) {
    return updateTransactionItems(month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime month)? loadTransactionItems,
    TResult? Function(DateTime month)? updateTransactionItems,
    TResult? Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult? Function(List<Transaction> transactions)? getIncomeAmount,
  }) {
    return updateTransactionItems?.call(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime month)? loadTransactionItems,
    TResult Function(DateTime month)? updateTransactionItems,
    TResult Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult Function(List<Transaction> transactions)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (updateTransactionItems != null) {
      return updateTransactionItems(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionItems value) loadTransactionItems,
    required TResult Function(UpdateTransactionItems value)
        updateTransactionItems,
    required TResult Function(GetExpenseAmount value) getExpenseAmount,
    required TResult Function(GetIncomeAmount value) getIncomeAmount,
  }) {
    return updateTransactionItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionItems value)? loadTransactionItems,
    TResult? Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult? Function(GetExpenseAmount value)? getExpenseAmount,
    TResult? Function(GetIncomeAmount value)? getIncomeAmount,
  }) {
    return updateTransactionItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionItems value)? loadTransactionItems,
    TResult Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult Function(GetExpenseAmount value)? getExpenseAmount,
    TResult Function(GetIncomeAmount value)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (updateTransactionItems != null) {
      return updateTransactionItems(this);
    }
    return orElse();
  }
}

abstract class UpdateTransactionItems implements TransactionEvent {
  const factory UpdateTransactionItems({required final DateTime month}) =
      _$UpdateTransactionItemsImpl;

  DateTime get month;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionItemsImplCopyWith<_$UpdateTransactionItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetExpenseAmountImplCopyWith<$Res> {
  factory _$$GetExpenseAmountImplCopyWith(_$GetExpenseAmountImpl value,
          $Res Function(_$GetExpenseAmountImpl) then) =
      __$$GetExpenseAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionData data, DateTime month});

  $TransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetExpenseAmountImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$GetExpenseAmountImpl>
    implements _$$GetExpenseAmountImplCopyWith<$Res> {
  __$$GetExpenseAmountImplCopyWithImpl(_$GetExpenseAmountImpl _value,
      $Res Function(_$GetExpenseAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? month = null,
  }) {
    return _then(_$GetExpenseAmountImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionData,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionDataCopyWith<$Res> get data {
    return $TransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetExpenseAmountImpl implements GetExpenseAmount {
  const _$GetExpenseAmountImpl(this.data, this.month);

  @override
  final TransactionData data;
  @override
  final DateTime month;

  @override
  String toString() {
    return 'TransactionEvent.getExpenseAmount(data: $data, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExpenseAmountImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, month);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExpenseAmountImplCopyWith<_$GetExpenseAmountImpl> get copyWith =>
      __$$GetExpenseAmountImplCopyWithImpl<_$GetExpenseAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime month) loadTransactionItems,
    required TResult Function(DateTime month) updateTransactionItems,
    required TResult Function(TransactionData data, DateTime month)
        getExpenseAmount,
    required TResult Function(List<Transaction> transactions) getIncomeAmount,
  }) {
    return getExpenseAmount(data, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime month)? loadTransactionItems,
    TResult? Function(DateTime month)? updateTransactionItems,
    TResult? Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult? Function(List<Transaction> transactions)? getIncomeAmount,
  }) {
    return getExpenseAmount?.call(data, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime month)? loadTransactionItems,
    TResult Function(DateTime month)? updateTransactionItems,
    TResult Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult Function(List<Transaction> transactions)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (getExpenseAmount != null) {
      return getExpenseAmount(data, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionItems value) loadTransactionItems,
    required TResult Function(UpdateTransactionItems value)
        updateTransactionItems,
    required TResult Function(GetExpenseAmount value) getExpenseAmount,
    required TResult Function(GetIncomeAmount value) getIncomeAmount,
  }) {
    return getExpenseAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionItems value)? loadTransactionItems,
    TResult? Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult? Function(GetExpenseAmount value)? getExpenseAmount,
    TResult? Function(GetIncomeAmount value)? getIncomeAmount,
  }) {
    return getExpenseAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionItems value)? loadTransactionItems,
    TResult Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult Function(GetExpenseAmount value)? getExpenseAmount,
    TResult Function(GetIncomeAmount value)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (getExpenseAmount != null) {
      return getExpenseAmount(this);
    }
    return orElse();
  }
}

abstract class GetExpenseAmount implements TransactionEvent {
  const factory GetExpenseAmount(
          final TransactionData data, final DateTime month) =
      _$GetExpenseAmountImpl;

  TransactionData get data;
  DateTime get month;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExpenseAmountImplCopyWith<_$GetExpenseAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIncomeAmountImplCopyWith<$Res> {
  factory _$$GetIncomeAmountImplCopyWith(_$GetIncomeAmountImpl value,
          $Res Function(_$GetIncomeAmountImpl) then) =
      __$$GetIncomeAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Transaction> transactions});
}

/// @nodoc
class __$$GetIncomeAmountImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$GetIncomeAmountImpl>
    implements _$$GetIncomeAmountImplCopyWith<$Res> {
  __$$GetIncomeAmountImplCopyWithImpl(
      _$GetIncomeAmountImpl _value, $Res Function(_$GetIncomeAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$GetIncomeAmountImpl(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$GetIncomeAmountImpl implements GetIncomeAmount {
  const _$GetIncomeAmountImpl(final List<Transaction> transactions)
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
    return 'TransactionEvent.getIncomeAmount(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIncomeAmountImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIncomeAmountImplCopyWith<_$GetIncomeAmountImpl> get copyWith =>
      __$$GetIncomeAmountImplCopyWithImpl<_$GetIncomeAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime month) loadTransactionItems,
    required TResult Function(DateTime month) updateTransactionItems,
    required TResult Function(TransactionData data, DateTime month)
        getExpenseAmount,
    required TResult Function(List<Transaction> transactions) getIncomeAmount,
  }) {
    return getIncomeAmount(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime month)? loadTransactionItems,
    TResult? Function(DateTime month)? updateTransactionItems,
    TResult? Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult? Function(List<Transaction> transactions)? getIncomeAmount,
  }) {
    return getIncomeAmount?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime month)? loadTransactionItems,
    TResult Function(DateTime month)? updateTransactionItems,
    TResult Function(TransactionData data, DateTime month)? getExpenseAmount,
    TResult Function(List<Transaction> transactions)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (getIncomeAmount != null) {
      return getIncomeAmount(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionItems value) loadTransactionItems,
    required TResult Function(UpdateTransactionItems value)
        updateTransactionItems,
    required TResult Function(GetExpenseAmount value) getExpenseAmount,
    required TResult Function(GetIncomeAmount value) getIncomeAmount,
  }) {
    return getIncomeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionItems value)? loadTransactionItems,
    TResult? Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult? Function(GetExpenseAmount value)? getExpenseAmount,
    TResult? Function(GetIncomeAmount value)? getIncomeAmount,
  }) {
    return getIncomeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionItems value)? loadTransactionItems,
    TResult Function(UpdateTransactionItems value)? updateTransactionItems,
    TResult Function(GetExpenseAmount value)? getExpenseAmount,
    TResult Function(GetIncomeAmount value)? getIncomeAmount,
    required TResult orElse(),
  }) {
    if (getIncomeAmount != null) {
      return getIncomeAmount(this);
    }
    return orElse();
  }
}

abstract class GetIncomeAmount implements TransactionEvent {
  const factory GetIncomeAmount(final List<Transaction> transactions) =
      _$GetIncomeAmountImpl;

  List<Transaction> get transactions;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetIncomeAmountImplCopyWith<_$GetIncomeAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TransactionData data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TransactionData data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TransactionData data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionError value) error,
    required TResult Function(TransactionLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionError value)? error,
    TResult? Function(TransactionLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionError value)? error,
    TResult Function(TransactionLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionInitialImplCopyWith<$Res> {
  factory _$$TransactionInitialImplCopyWith(_$TransactionInitialImpl value,
          $Res Function(_$TransactionInitialImpl) then) =
      __$$TransactionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInitialImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionInitialImpl>
    implements _$$TransactionInitialImplCopyWith<$Res> {
  __$$TransactionInitialImplCopyWithImpl(_$TransactionInitialImpl _value,
      $Res Function(_$TransactionInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionInitialImpl implements TransactionInitial {
  const _$TransactionInitialImpl();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TransactionData data) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TransactionData data)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TransactionData data)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionError value) error,
    required TResult Function(TransactionLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionError value)? error,
    TResult? Function(TransactionLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionError value)? error,
    TResult Function(TransactionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInitial implements TransactionState {
  const factory TransactionInitial() = _$TransactionInitialImpl;
}

/// @nodoc
abstract class _$$TransactionLoadingImplCopyWith<$Res> {
  factory _$$TransactionLoadingImplCopyWith(_$TransactionLoadingImpl value,
          $Res Function(_$TransactionLoadingImpl) then) =
      __$$TransactionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingImpl>
    implements _$$TransactionLoadingImplCopyWith<$Res> {
  __$$TransactionLoadingImplCopyWithImpl(_$TransactionLoadingImpl _value,
      $Res Function(_$TransactionLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionLoadingImpl implements TransactionLoading {
  const _$TransactionLoadingImpl();

  @override
  String toString() {
    return 'TransactionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TransactionData data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TransactionData data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TransactionData data)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionError value) error,
    required TResult Function(TransactionLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionError value)? error,
    TResult? Function(TransactionLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionError value)? error,
    TResult Function(TransactionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoading implements TransactionState {
  const factory TransactionLoading() = _$TransactionLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionErrorImplCopyWith<$Res> {
  factory _$$TransactionErrorImplCopyWith(_$TransactionErrorImpl value,
          $Res Function(_$TransactionErrorImpl) then) =
      __$$TransactionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransactionErrorImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorImpl>
    implements _$$TransactionErrorImplCopyWith<$Res> {
  __$$TransactionErrorImplCopyWithImpl(_$TransactionErrorImpl _value,
      $Res Function(_$TransactionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransactionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionErrorImpl implements TransactionError {
  const _$TransactionErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      __$$TransactionErrorImplCopyWithImpl<_$TransactionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TransactionData data) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TransactionData data)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TransactionData data)? loaded,
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
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionError value) error,
    required TResult Function(TransactionLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionError value)? error,
    TResult? Function(TransactionLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionError value)? error,
    TResult Function(TransactionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionError implements TransactionState {
  const factory TransactionError(final String message) = _$TransactionErrorImpl;

  String get message;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadedImplCopyWith<$Res> {
  factory _$$TransactionLoadedImplCopyWith(_$TransactionLoadedImpl value,
          $Res Function(_$TransactionLoadedImpl) then) =
      __$$TransactionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionData data});

  $TransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransactionLoadedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadedImpl>
    implements _$$TransactionLoadedImplCopyWith<$Res> {
  __$$TransactionLoadedImplCopyWithImpl(_$TransactionLoadedImpl _value,
      $Res Function(_$TransactionLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TransactionLoadedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionData,
    ));
  }

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionDataCopyWith<$Res> get data {
    return $TransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$TransactionLoadedImpl implements TransactionLoaded {
  const _$TransactionLoadedImpl({required this.data});

  @override
  final TransactionData data;

  @override
  String toString() {
    return 'TransactionState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLoadedImplCopyWith<_$TransactionLoadedImpl> get copyWith =>
      __$$TransactionLoadedImplCopyWithImpl<_$TransactionLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(TransactionData data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(TransactionData data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(TransactionData data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionError value) error,
    required TResult Function(TransactionLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionError value)? error,
    TResult? Function(TransactionLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionError value)? error,
    TResult Function(TransactionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TransactionLoaded implements TransactionState {
  const factory TransactionLoaded({required final TransactionData data}) =
      _$TransactionLoadedImpl;

  TransactionData get data;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionLoadedImplCopyWith<_$TransactionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
