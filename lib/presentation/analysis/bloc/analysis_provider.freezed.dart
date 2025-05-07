// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_provider.dart';

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

class _$AnalysisDataImpl implements _AnalysisData {
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
  String toString() {
    return 'AnalysisData(currentMonth: $currentMonth, transactions: $transactions, segments: $segments, analysis: $analysis, expenseAmount: $expenseAmount, incomeAmount: $incomeAmount, selectedType: $selectedType, errorMessage: $errorMessage)';
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
