// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalysisData {
  DateTime get currentMonth => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  List<Segment> get segments => throw _privateConstructorUsedError;
  List<Analysis> get analysis => throw _privateConstructorUsedError;
  double get expenseAmount => throw _privateConstructorUsedError;
  double get incomeAmount => throw _privateConstructorUsedError;
  TypeSpending get selectedType => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisDataCopyWith<AnalysisData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisDataCopyWith<$Res> {
  factory $AnalysisDataCopyWith(
          AnalysisData value, $Res Function(AnalysisData) then) =
      _$AnalysisDataCopyWithImpl<$Res, AnalysisData>;
  @useResult
  $Res call(
      {DateTime currentMonth,
      List<Transaction> transactions,
      List<Segment> segments,
      List<Analysis> analysis,
      double expenseAmount,
      double incomeAmount,
      TypeSpending selectedType,
      String? errorMessage});
}

/// @nodoc
class _$AnalysisDataCopyWithImpl<$Res, $Val extends AnalysisData>
    implements $AnalysisDataCopyWith<$Res> {
  _$AnalysisDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? transactions = null,
    Object? segments = null,
    Object? analysis = null,
    Object? expenseAmount = null,
    Object? incomeAmount = null,
    Object? selectedType = null,
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
      segments: null == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as List<Analysis>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalysisDataImplCopyWith<$Res>
    implements $AnalysisDataCopyWith<$Res> {
  factory _$$AnalysisDataImplCopyWith(
          _$AnalysisDataImpl value, $Res Function(_$AnalysisDataImpl) then) =
      __$$AnalysisDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentMonth,
      List<Transaction> transactions,
      List<Segment> segments,
      List<Analysis> analysis,
      double expenseAmount,
      double incomeAmount,
      TypeSpending selectedType,
      String? errorMessage});
}

/// @nodoc
class __$$AnalysisDataImplCopyWithImpl<$Res>
    extends _$AnalysisDataCopyWithImpl<$Res, _$AnalysisDataImpl>
    implements _$$AnalysisDataImplCopyWith<$Res> {
  __$$AnalysisDataImplCopyWithImpl(
      _$AnalysisDataImpl _value, $Res Function(_$AnalysisDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? transactions = null,
    Object? segments = null,
    Object? analysis = null,
    Object? expenseAmount = null,
    Object? incomeAmount = null,
    Object? selectedType = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AnalysisDataImpl(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      segments: null == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
      analysis: null == analysis
          ? _value._analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as List<Analysis>,
      expenseAmount: null == expenseAmount
          ? _value.expenseAmount
          : expenseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AnalysisDataImpl with DiagnosticableTreeMixin implements _AnalysisData {
  const _$AnalysisDataImpl(
      {required this.currentMonth,
      required final List<Transaction> transactions,
      required final List<Segment> segments,
      final List<Analysis> analysis = const [],
      this.expenseAmount = 0,
      this.incomeAmount = 0,
      this.selectedType = TypeSpending.expense,
      this.errorMessage})
      : _transactions = transactions,
        _segments = segments,
        _analysis = analysis;

  @override
  final DateTime currentMonth;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<Segment> _segments;
  @override
  List<Segment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  final List<Analysis> _analysis;
  @override
  @JsonKey()
  List<Analysis> get analysis {
    if (_analysis is EqualUnmodifiableListView) return _analysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysis);
  }

  @override
  @JsonKey()
  final double expenseAmount;
  @override
  @JsonKey()
  final double incomeAmount;
  @override
  @JsonKey()
  final TypeSpending selectedType;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisData(currentMonth: $currentMonth, transactions: $transactions, segments: $segments, analysis: $analysis, expenseAmount: $expenseAmount, incomeAmount: $incomeAmount, selectedType: $selectedType, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalysisData'))
      ..add(DiagnosticsProperty('currentMonth', currentMonth))
      ..add(DiagnosticsProperty('transactions', transactions))
      ..add(DiagnosticsProperty('segments', segments))
      ..add(DiagnosticsProperty('analysis', analysis))
      ..add(DiagnosticsProperty('expenseAmount', expenseAmount))
      ..add(DiagnosticsProperty('incomeAmount', incomeAmount))
      ..add(DiagnosticsProperty('selectedType', selectedType))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisDataImpl &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            const DeepCollectionEquality().equals(other._analysis, _analysis) &&
            (identical(other.expenseAmount, expenseAmount) ||
                other.expenseAmount == expenseAmount) &&
            (identical(other.incomeAmount, incomeAmount) ||
                other.incomeAmount == incomeAmount) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentMonth,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_segments),
      const DeepCollectionEquality().hash(_analysis),
      expenseAmount,
      incomeAmount,
      selectedType,
      errorMessage);

  /// Create a copy of AnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisDataImplCopyWith<_$AnalysisDataImpl> get copyWith =>
      __$$AnalysisDataImplCopyWithImpl<_$AnalysisDataImpl>(this, _$identity);
}

abstract class _AnalysisData implements AnalysisData {
  const factory _AnalysisData(
      {required final DateTime currentMonth,
      required final List<Transaction> transactions,
      required final List<Segment> segments,
      final List<Analysis> analysis,
      final double expenseAmount,
      final double incomeAmount,
      final TypeSpending selectedType,
      final String? errorMessage}) = _$AnalysisDataImpl;

  @override
  DateTime get currentMonth;
  @override
  List<Transaction> get transactions;
  @override
  List<Segment> get segments;
  @override
  List<Analysis> get analysis;
  @override
  double get expenseAmount;
  @override
  double get incomeAmount;
  @override
  TypeSpending get selectedType;
  @override
  String? get errorMessage;

  /// Create a copy of AnalysisData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisDataImplCopyWith<_$AnalysisDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalysisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(DateTime month, TypeSpending typeSpending)
        updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactions value)? loadTransactions,
    TResult? Function(UpdateTransactions value)? updateTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(UpdateTransactions value)? updateTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisEventCopyWith<$Res> {
  factory $AnalysisEventCopyWith(
          AnalysisEvent value, $Res Function(AnalysisEvent) then) =
      _$AnalysisEventCopyWithImpl<$Res, AnalysisEvent>;
}

/// @nodoc
class _$AnalysisEventCopyWithImpl<$Res, $Val extends AnalysisEvent>
    implements $AnalysisEventCopyWith<$Res> {
  _$AnalysisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTransactionsImplCopyWith<$Res> {
  factory _$$LoadTransactionsImplCopyWith(_$LoadTransactionsImpl value,
          $Res Function(_$LoadTransactionsImpl) then) =
      __$$LoadTransactionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransactionsImplCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$LoadTransactionsImpl>
    implements _$$LoadTransactionsImplCopyWith<$Res> {
  __$$LoadTransactionsImplCopyWithImpl(_$LoadTransactionsImpl _value,
      $Res Function(_$LoadTransactionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTransactionsImpl
    with DiagnosticableTreeMixin
    implements LoadTransactions {
  const _$LoadTransactionsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisEvent.loadTransactions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AnalysisEvent.loadTransactions'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTransactionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(DateTime month, TypeSpending typeSpending)
        updateTransactions,
  }) {
    return loadTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
  }) {
    return loadTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactions value)? loadTransactions,
    TResult? Function(UpdateTransactions value)? updateTransactions,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(UpdateTransactions value)? updateTransactions,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class LoadTransactions implements AnalysisEvent {
  const factory LoadTransactions() = _$LoadTransactionsImpl;
}

/// @nodoc
abstract class _$$UpdateTransactionsImplCopyWith<$Res> {
  factory _$$UpdateTransactionsImplCopyWith(_$UpdateTransactionsImpl value,
          $Res Function(_$UpdateTransactionsImpl) then) =
      __$$UpdateTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime month, TypeSpending typeSpending});
}

/// @nodoc
class __$$UpdateTransactionsImplCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$UpdateTransactionsImpl>
    implements _$$UpdateTransactionsImplCopyWith<$Res> {
  __$$UpdateTransactionsImplCopyWithImpl(_$UpdateTransactionsImpl _value,
      $Res Function(_$UpdateTransactionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? typeSpending = null,
  }) {
    return _then(_$UpdateTransactionsImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeSpending: null == typeSpending
          ? _value.typeSpending
          : typeSpending // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionsImpl
    with DiagnosticableTreeMixin
    implements UpdateTransactions {
  const _$UpdateTransactionsImpl(
      {required this.month, required this.typeSpending});

  @override
  final DateTime month;
  @override
  final TypeSpending typeSpending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisEvent.updateTransactions(month: $month, typeSpending: $typeSpending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalysisEvent.updateTransactions'))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('typeSpending', typeSpending));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionsImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.typeSpending, typeSpending) ||
                other.typeSpending == typeSpending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month, typeSpending);

  /// Create a copy of AnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionsImplCopyWith<_$UpdateTransactionsImpl> get copyWith =>
      __$$UpdateTransactionsImplCopyWithImpl<_$UpdateTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(DateTime month, TypeSpending typeSpending)
        updateTransactions,
  }) {
    return updateTransactions(month, typeSpending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
  }) {
    return updateTransactions?.call(month, typeSpending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(DateTime month, TypeSpending typeSpending)?
        updateTransactions,
    required TResult orElse(),
  }) {
    if (updateTransactions != null) {
      return updateTransactions(month, typeSpending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactions value) loadTransactions,
    required TResult Function(UpdateTransactions value) updateTransactions,
  }) {
    return updateTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactions value)? loadTransactions,
    TResult? Function(UpdateTransactions value)? updateTransactions,
  }) {
    return updateTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactions value)? loadTransactions,
    TResult Function(UpdateTransactions value)? updateTransactions,
    required TResult orElse(),
  }) {
    if (updateTransactions != null) {
      return updateTransactions(this);
    }
    return orElse();
  }
}

abstract class UpdateTransactions implements AnalysisEvent {
  const factory UpdateTransactions(
      {required final DateTime month,
      required final TypeSpending typeSpending}) = _$UpdateTransactionsImpl;

  DateTime get month;
  TypeSpending get typeSpending;

  /// Create a copy of AnalysisEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionsImplCopyWith<_$UpdateTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalysisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AnalysisData data) loading,
    required TResult Function(AnalysisData data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AnalysisData data)? loading,
    TResult? Function(AnalysisData data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AnalysisData data)? loading,
    TResult Function(AnalysisData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitial value) initial,
    required TResult Function(AnalysisLoading value) loading,
    required TResult Function(AnalysisLoaded value) loaded,
    required TResult Function(AnalysisError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitial value)? initial,
    TResult? Function(AnalysisLoading value)? loading,
    TResult? Function(AnalysisLoaded value)? loaded,
    TResult? Function(AnalysisError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitial value)? initial,
    TResult Function(AnalysisLoading value)? loading,
    TResult Function(AnalysisLoaded value)? loaded,
    TResult Function(AnalysisError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
          AnalysisState value, $Res Function(AnalysisState) then) =
      _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AnalysisInitialImplCopyWith<$Res> {
  factory _$$AnalysisInitialImplCopyWith(_$AnalysisInitialImpl value,
          $Res Function(_$AnalysisInitialImpl) then) =
      __$$AnalysisInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalysisInitialImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisInitialImpl>
    implements _$$AnalysisInitialImplCopyWith<$Res> {
  __$$AnalysisInitialImplCopyWithImpl(
      _$AnalysisInitialImpl _value, $Res Function(_$AnalysisInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnalysisInitialImpl
    with DiagnosticableTreeMixin
    implements AnalysisInitial {
  const _$AnalysisInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AnalysisState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnalysisInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AnalysisData data) loading,
    required TResult Function(AnalysisData data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AnalysisData data)? loading,
    TResult? Function(AnalysisData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AnalysisData data)? loading,
    TResult Function(AnalysisData data)? loaded,
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
    required TResult Function(AnalysisInitial value) initial,
    required TResult Function(AnalysisLoading value) loading,
    required TResult Function(AnalysisLoaded value) loaded,
    required TResult Function(AnalysisError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitial value)? initial,
    TResult? Function(AnalysisLoading value)? loading,
    TResult? Function(AnalysisLoaded value)? loaded,
    TResult? Function(AnalysisError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitial value)? initial,
    TResult Function(AnalysisLoading value)? loading,
    TResult Function(AnalysisLoaded value)? loaded,
    TResult Function(AnalysisError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AnalysisInitial implements AnalysisState {
  const factory AnalysisInitial() = _$AnalysisInitialImpl;
}

/// @nodoc
abstract class _$$AnalysisLoadingImplCopyWith<$Res> {
  factory _$$AnalysisLoadingImplCopyWith(_$AnalysisLoadingImpl value,
          $Res Function(_$AnalysisLoadingImpl) then) =
      __$$AnalysisLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalysisData data});

  $AnalysisDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AnalysisLoadingImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisLoadingImpl>
    implements _$$AnalysisLoadingImplCopyWith<$Res> {
  __$$AnalysisLoadingImplCopyWithImpl(
      _$AnalysisLoadingImpl _value, $Res Function(_$AnalysisLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnalysisLoadingImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AnalysisData,
    ));
  }

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisDataCopyWith<$Res> get data {
    return $AnalysisDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$AnalysisLoadingImpl
    with DiagnosticableTreeMixin
    implements AnalysisLoading {
  const _$AnalysisLoadingImpl({required this.data});

  @override
  final AnalysisData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisState.loading(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalysisState.loading'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisLoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisLoadingImplCopyWith<_$AnalysisLoadingImpl> get copyWith =>
      __$$AnalysisLoadingImplCopyWithImpl<_$AnalysisLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AnalysisData data) loading,
    required TResult Function(AnalysisData data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AnalysisData data)? loading,
    TResult? Function(AnalysisData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AnalysisData data)? loading,
    TResult Function(AnalysisData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitial value) initial,
    required TResult Function(AnalysisLoading value) loading,
    required TResult Function(AnalysisLoaded value) loaded,
    required TResult Function(AnalysisError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitial value)? initial,
    TResult? Function(AnalysisLoading value)? loading,
    TResult? Function(AnalysisLoaded value)? loaded,
    TResult? Function(AnalysisError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitial value)? initial,
    TResult Function(AnalysisLoading value)? loading,
    TResult Function(AnalysisLoaded value)? loaded,
    TResult Function(AnalysisError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AnalysisLoading implements AnalysisState {
  const factory AnalysisLoading({required final AnalysisData data}) =
      _$AnalysisLoadingImpl;

  AnalysisData get data;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisLoadingImplCopyWith<_$AnalysisLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnalysisLoadedImplCopyWith<$Res> {
  factory _$$AnalysisLoadedImplCopyWith(_$AnalysisLoadedImpl value,
          $Res Function(_$AnalysisLoadedImpl) then) =
      __$$AnalysisLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalysisData data});

  $AnalysisDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AnalysisLoadedImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisLoadedImpl>
    implements _$$AnalysisLoadedImplCopyWith<$Res> {
  __$$AnalysisLoadedImplCopyWithImpl(
      _$AnalysisLoadedImpl _value, $Res Function(_$AnalysisLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnalysisLoadedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AnalysisData,
    ));
  }

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalysisDataCopyWith<$Res> get data {
    return $AnalysisDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$AnalysisLoadedImpl
    with DiagnosticableTreeMixin
    implements AnalysisLoaded {
  const _$AnalysisLoadedImpl({required this.data});

  @override
  final AnalysisData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisState.loaded(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalysisState.loaded'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisLoadedImplCopyWith<_$AnalysisLoadedImpl> get copyWith =>
      __$$AnalysisLoadedImplCopyWithImpl<_$AnalysisLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AnalysisData data) loading,
    required TResult Function(AnalysisData data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AnalysisData data)? loading,
    TResult? Function(AnalysisData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AnalysisData data)? loading,
    TResult Function(AnalysisData data)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(AnalysisInitial value) initial,
    required TResult Function(AnalysisLoading value) loading,
    required TResult Function(AnalysisLoaded value) loaded,
    required TResult Function(AnalysisError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitial value)? initial,
    TResult? Function(AnalysisLoading value)? loading,
    TResult? Function(AnalysisLoaded value)? loaded,
    TResult? Function(AnalysisError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitial value)? initial,
    TResult Function(AnalysisLoading value)? loading,
    TResult Function(AnalysisLoaded value)? loaded,
    TResult Function(AnalysisError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AnalysisLoaded implements AnalysisState {
  const factory AnalysisLoaded({required final AnalysisData data}) =
      _$AnalysisLoadedImpl;

  AnalysisData get data;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisLoadedImplCopyWith<_$AnalysisLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnalysisErrorImplCopyWith<$Res> {
  factory _$$AnalysisErrorImplCopyWith(
          _$AnalysisErrorImpl value, $Res Function(_$AnalysisErrorImpl) then) =
      __$$AnalysisErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AnalysisErrorImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisErrorImpl>
    implements _$$AnalysisErrorImplCopyWith<$Res> {
  __$$AnalysisErrorImplCopyWithImpl(
      _$AnalysisErrorImpl _value, $Res Function(_$AnalysisErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AnalysisErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnalysisErrorImpl
    with DiagnosticableTreeMixin
    implements AnalysisError {
  const _$AnalysisErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalysisState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalysisState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisErrorImplCopyWith<_$AnalysisErrorImpl> get copyWith =>
      __$$AnalysisErrorImplCopyWithImpl<_$AnalysisErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AnalysisData data) loading,
    required TResult Function(AnalysisData data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AnalysisData data)? loading,
    TResult? Function(AnalysisData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AnalysisData data)? loading,
    TResult Function(AnalysisData data)? loaded,
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
    required TResult Function(AnalysisInitial value) initial,
    required TResult Function(AnalysisLoading value) loading,
    required TResult Function(AnalysisLoaded value) loaded,
    required TResult Function(AnalysisError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitial value)? initial,
    TResult? Function(AnalysisLoading value)? loading,
    TResult? Function(AnalysisLoaded value)? loaded,
    TResult? Function(AnalysisError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitial value)? initial,
    TResult Function(AnalysisLoading value)? loading,
    TResult Function(AnalysisLoaded value)? loaded,
    TResult Function(AnalysisError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AnalysisError implements AnalysisState {
  const factory AnalysisError(final String message) = _$AnalysisErrorImpl;

  String get message;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisErrorImplCopyWith<_$AnalysisErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
