// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTransactionData {
  TypeSpending get selectedType => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Account? get fromAccount => throw _privateConstructorUsedError;
  Account? get toAccount => throw _privateConstructorUsedError;
  Transaction? get transaction => throw _privateConstructorUsedError;
  List<Account>? get accounts => throw _privateConstructorUsedError;
  List<Account>? get destinationAccounts => throw _privateConstructorUsedError;
  List<Category>? get expenseCategories => throw _privateConstructorUsedError;
  List<Category>? get incomeCategories => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        $default, {
    required TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateTransactionData value) $default, {
    required TResult Function(_InitTransactionData value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateTransactionData value)? $default, {
    TResult? Function(_InitTransactionData value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateTransactionData value)? $default, {
    TResult Function(_InitTransactionData value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTransactionDataCopyWith<CreateTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionDataCopyWith<$Res> {
  factory $CreateTransactionDataCopyWith(CreateTransactionData value,
          $Res Function(CreateTransactionData) then) =
      _$CreateTransactionDataCopyWithImpl<$Res, CreateTransactionData>;
  @useResult
  $Res call(
      {TypeSpending selectedType,
      Category? category,
      Account? fromAccount,
      Account? toAccount,
      Transaction? transaction,
      List<Account>? accounts,
      List<Account>? destinationAccounts,
      List<Category>? expenseCategories,
      List<Category>? incomeCategories,
      String? errorMessage});
}

/// @nodoc
class _$CreateTransactionDataCopyWithImpl<$Res,
        $Val extends CreateTransactionData>
    implements $CreateTransactionDataCopyWith<$Res> {
  _$CreateTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? category = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? transaction = freezed,
    Object? accounts = freezed,
    Object? destinationAccounts = freezed,
    Object? expenseCategories = freezed,
    Object? incomeCategories = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      destinationAccounts: freezed == destinationAccounts
          ? _value.destinationAccounts
          : destinationAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      expenseCategories: freezed == expenseCategories
          ? _value.expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      incomeCategories: freezed == incomeCategories
          ? _value.incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTransactionDataImplCopyWith<$Res>
    implements $CreateTransactionDataCopyWith<$Res> {
  factory _$$CreateTransactionDataImplCopyWith(
          _$CreateTransactionDataImpl value,
          $Res Function(_$CreateTransactionDataImpl) then) =
      __$$CreateTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TypeSpending selectedType,
      Category? category,
      Account? fromAccount,
      Account? toAccount,
      Transaction? transaction,
      List<Account>? accounts,
      List<Account>? destinationAccounts,
      List<Category>? expenseCategories,
      List<Category>? incomeCategories,
      String? errorMessage});
}

/// @nodoc
class __$$CreateTransactionDataImplCopyWithImpl<$Res>
    extends _$CreateTransactionDataCopyWithImpl<$Res,
        _$CreateTransactionDataImpl>
    implements _$$CreateTransactionDataImplCopyWith<$Res> {
  __$$CreateTransactionDataImplCopyWithImpl(_$CreateTransactionDataImpl _value,
      $Res Function(_$CreateTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? category = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? transaction = freezed,
    Object? accounts = freezed,
    Object? destinationAccounts = freezed,
    Object? expenseCategories = freezed,
    Object? incomeCategories = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CreateTransactionDataImpl(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      destinationAccounts: freezed == destinationAccounts
          ? _value._destinationAccounts
          : destinationAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      expenseCategories: freezed == expenseCategories
          ? _value._expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      incomeCategories: freezed == incomeCategories
          ? _value._incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateTransactionDataImpl extends _CreateTransactionData {
  const _$CreateTransactionDataImpl(
      {this.selectedType = TypeSpending.expense,
      this.category = null,
      this.fromAccount = null,
      this.toAccount = null,
      this.transaction = null,
      final List<Account>? accounts = const [],
      final List<Account>? destinationAccounts = const [],
      final List<Category>? expenseCategories = const [],
      final List<Category>? incomeCategories = const [],
      this.errorMessage})
      : _accounts = accounts,
        _destinationAccounts = destinationAccounts,
        _expenseCategories = expenseCategories,
        _incomeCategories = incomeCategories,
        super._();

  @override
  @JsonKey()
  final TypeSpending selectedType;
  @override
  @JsonKey()
  final Category? category;
  @override
  @JsonKey()
  final Account? fromAccount;
  @override
  @JsonKey()
  final Account? toAccount;
  @override
  @JsonKey()
  final Transaction? transaction;
  final List<Account>? _accounts;
  @override
  @JsonKey()
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Account>? _destinationAccounts;
  @override
  @JsonKey()
  List<Account>? get destinationAccounts {
    final value = _destinationAccounts;
    if (value == null) return null;
    if (_destinationAccounts is EqualUnmodifiableListView)
      return _destinationAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _expenseCategories;
  @override
  @JsonKey()
  List<Category>? get expenseCategories {
    final value = _expenseCategories;
    if (value == null) return null;
    if (_expenseCategories is EqualUnmodifiableListView)
      return _expenseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _incomeCategories;
  @override
  @JsonKey()
  List<Category>? get incomeCategories {
    final value = _incomeCategories;
    if (value == null) return null;
    if (_incomeCategories is EqualUnmodifiableListView)
      return _incomeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CreateTransactionData(selectedType: $selectedType, category: $category, fromAccount: $fromAccount, toAccount: $toAccount, transaction: $transaction, accounts: $accounts, destinationAccounts: $destinationAccounts, expenseCategories: $expenseCategories, incomeCategories: $incomeCategories, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionDataImpl &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality()
                .equals(other._destinationAccounts, _destinationAccounts) &&
            const DeepCollectionEquality()
                .equals(other._expenseCategories, _expenseCategories) &&
            const DeepCollectionEquality()
                .equals(other._incomeCategories, _incomeCategories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedType,
      category,
      fromAccount,
      toAccount,
      transaction,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_destinationAccounts),
      const DeepCollectionEquality().hash(_expenseCategories),
      const DeepCollectionEquality().hash(_incomeCategories),
      errorMessage);

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTransactionDataImplCopyWith<_$CreateTransactionDataImpl>
      get copyWith => __$$CreateTransactionDataImplCopyWithImpl<
          _$CreateTransactionDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        $default, {
    required TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        init,
  }) {
    return $default(
        selectedType,
        category,
        fromAccount,
        toAccount,
        transaction,
        accounts,
        destinationAccounts,
        expenseCategories,
        incomeCategories,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
  }) {
    return $default?.call(
        selectedType,
        category,
        fromAccount,
        toAccount,
        transaction,
        accounts,
        destinationAccounts,
        expenseCategories,
        incomeCategories,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          selectedType,
          category,
          fromAccount,
          toAccount,
          transaction,
          accounts,
          destinationAccounts,
          expenseCategories,
          incomeCategories,
          errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateTransactionData value) $default, {
    required TResult Function(_InitTransactionData value) init,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateTransactionData value)? $default, {
    TResult? Function(_InitTransactionData value)? init,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateTransactionData value)? $default, {
    TResult Function(_InitTransactionData value)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CreateTransactionData extends CreateTransactionData {
  const factory _CreateTransactionData(
      {final TypeSpending selectedType,
      final Category? category,
      final Account? fromAccount,
      final Account? toAccount,
      final Transaction? transaction,
      final List<Account>? accounts,
      final List<Account>? destinationAccounts,
      final List<Category>? expenseCategories,
      final List<Category>? incomeCategories,
      final String? errorMessage}) = _$CreateTransactionDataImpl;
  const _CreateTransactionData._() : super._();

  @override
  TypeSpending get selectedType;
  @override
  Category? get category;
  @override
  Account? get fromAccount;
  @override
  Account? get toAccount;
  @override
  Transaction? get transaction;
  @override
  List<Account>? get accounts;
  @override
  List<Account>? get destinationAccounts;
  @override
  List<Category>? get expenseCategories;
  @override
  List<Category>? get incomeCategories;
  @override
  String? get errorMessage;

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTransactionDataImplCopyWith<_$CreateTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitTransactionDataImplCopyWith<$Res>
    implements $CreateTransactionDataCopyWith<$Res> {
  factory _$$InitTransactionDataImplCopyWith(_$InitTransactionDataImpl value,
          $Res Function(_$InitTransactionDataImpl) then) =
      __$$InitTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TypeSpending selectedType,
      Category? category,
      Account? fromAccount,
      Account? toAccount,
      Transaction? transaction,
      List<Account>? accounts,
      List<Account>? destinationAccounts,
      List<Category>? expenseCategories,
      List<Category>? incomeCategories,
      String? errorMessage});
}

/// @nodoc
class __$$InitTransactionDataImplCopyWithImpl<$Res>
    extends _$CreateTransactionDataCopyWithImpl<$Res, _$InitTransactionDataImpl>
    implements _$$InitTransactionDataImplCopyWith<$Res> {
  __$$InitTransactionDataImplCopyWithImpl(_$InitTransactionDataImpl _value,
      $Res Function(_$InitTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? category = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? transaction = freezed,
    Object? accounts = freezed,
    Object? destinationAccounts = freezed,
    Object? expenseCategories = freezed,
    Object? incomeCategories = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitTransactionDataImpl(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as TypeSpending,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      destinationAccounts: freezed == destinationAccounts
          ? _value._destinationAccounts
          : destinationAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
      expenseCategories: freezed == expenseCategories
          ? _value._expenseCategories
          : expenseCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      incomeCategories: freezed == incomeCategories
          ? _value._incomeCategories
          : incomeCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitTransactionDataImpl extends _InitTransactionData {
  const _$InitTransactionDataImpl(
      {this.selectedType = TypeSpending.expense,
      this.category = null,
      this.fromAccount = null,
      this.toAccount = null,
      this.transaction = null,
      final List<Account>? accounts = const [],
      final List<Account>? destinationAccounts = const [],
      final List<Category>? expenseCategories = const [],
      final List<Category>? incomeCategories = const [],
      this.errorMessage})
      : _accounts = accounts,
        _destinationAccounts = destinationAccounts,
        _expenseCategories = expenseCategories,
        _incomeCategories = incomeCategories,
        super._();

  @override
  @JsonKey()
  final TypeSpending selectedType;
  @override
  @JsonKey()
  final Category? category;
  @override
  @JsonKey()
  final Account? fromAccount;
  @override
  @JsonKey()
  final Account? toAccount;
  @override
  @JsonKey()
  final Transaction? transaction;
  final List<Account>? _accounts;
  @override
  @JsonKey()
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Account>? _destinationAccounts;
  @override
  @JsonKey()
  List<Account>? get destinationAccounts {
    final value = _destinationAccounts;
    if (value == null) return null;
    if (_destinationAccounts is EqualUnmodifiableListView)
      return _destinationAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _expenseCategories;
  @override
  @JsonKey()
  List<Category>? get expenseCategories {
    final value = _expenseCategories;
    if (value == null) return null;
    if (_expenseCategories is EqualUnmodifiableListView)
      return _expenseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _incomeCategories;
  @override
  @JsonKey()
  List<Category>? get incomeCategories {
    final value = _incomeCategories;
    if (value == null) return null;
    if (_incomeCategories is EqualUnmodifiableListView)
      return _incomeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CreateTransactionData.init(selectedType: $selectedType, category: $category, fromAccount: $fromAccount, toAccount: $toAccount, transaction: $transaction, accounts: $accounts, destinationAccounts: $destinationAccounts, expenseCategories: $expenseCategories, incomeCategories: $incomeCategories, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitTransactionDataImpl &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality()
                .equals(other._destinationAccounts, _destinationAccounts) &&
            const DeepCollectionEquality()
                .equals(other._expenseCategories, _expenseCategories) &&
            const DeepCollectionEquality()
                .equals(other._incomeCategories, _incomeCategories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedType,
      category,
      fromAccount,
      toAccount,
      transaction,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_destinationAccounts),
      const DeepCollectionEquality().hash(_expenseCategories),
      const DeepCollectionEquality().hash(_incomeCategories),
      errorMessage);

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitTransactionDataImplCopyWith<_$InitTransactionDataImpl> get copyWith =>
      __$$InitTransactionDataImplCopyWithImpl<_$InitTransactionDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        $default, {
    required TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)
        init,
  }) {
    return init(
        selectedType,
        category,
        fromAccount,
        toAccount,
        transaction,
        accounts,
        destinationAccounts,
        expenseCategories,
        incomeCategories,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult? Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
  }) {
    return init?.call(
        selectedType,
        category,
        fromAccount,
        toAccount,
        transaction,
        accounts,
        destinationAccounts,
        expenseCategories,
        incomeCategories,
        errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        $default, {
    TResult Function(
            TypeSpending selectedType,
            Category? category,
            Account? fromAccount,
            Account? toAccount,
            Transaction? transaction,
            List<Account>? accounts,
            List<Account>? destinationAccounts,
            List<Category>? expenseCategories,
            List<Category>? incomeCategories,
            String? errorMessage)?
        init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(
          selectedType,
          category,
          fromAccount,
          toAccount,
          transaction,
          accounts,
          destinationAccounts,
          expenseCategories,
          incomeCategories,
          errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateTransactionData value) $default, {
    required TResult Function(_InitTransactionData value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateTransactionData value)? $default, {
    TResult? Function(_InitTransactionData value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateTransactionData value)? $default, {
    TResult Function(_InitTransactionData value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitTransactionData extends CreateTransactionData {
  const factory _InitTransactionData(
      {final TypeSpending selectedType,
      final Category? category,
      final Account? fromAccount,
      final Account? toAccount,
      final Transaction? transaction,
      final List<Account>? accounts,
      final List<Account>? destinationAccounts,
      final List<Category>? expenseCategories,
      final List<Category>? incomeCategories,
      final String? errorMessage}) = _$InitTransactionDataImpl;
  const _InitTransactionData._() : super._();

  @override
  TypeSpending get selectedType;
  @override
  Category? get category;
  @override
  Account? get fromAccount;
  @override
  Account? get toAccount;
  @override
  Transaction? get transaction;
  @override
  List<Account>? get accounts;
  @override
  List<Account>? get destinationAccounts;
  @override
  List<Category>? get expenseCategories;
  @override
  List<Category>? get incomeCategories;
  @override
  String? get errorMessage;

  /// Create a copy of CreateTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitTransactionDataImplCopyWith<_$InitTransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateTransactionEvent {
  CreateTransactionData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTransactionEventCopyWith<CreateTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionEventCopyWith<$Res> {
  factory $CreateTransactionEventCopyWith(CreateTransactionEvent value,
          $Res Function(CreateTransactionEvent) then) =
      _$CreateTransactionEventCopyWithImpl<$Res, CreateTransactionEvent>;
  @useResult
  $Res call({CreateTransactionData data});

  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateTransactionEventCopyWithImpl<$Res,
        $Val extends CreateTransactionEvent>
    implements $CreateTransactionEventCopyWith<$Res> {
  _$CreateTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ) as $Val);
  }

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTransactionDataCopyWith<$Res> get data {
    return $CreateTransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialTransactionEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$InitialTransactionEventImplCopyWith(
          _$InitialTransactionEventImpl value,
          $Res Function(_$InitialTransactionEventImpl) then) =
      __$$InitialTransactionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialTransactionEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res,
        _$InitialTransactionEventImpl>
    implements _$$InitialTransactionEventImplCopyWith<$Res> {
  __$$InitialTransactionEventImplCopyWithImpl(
      _$InitialTransactionEventImpl _value,
      $Res Function(_$InitialTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$InitialTransactionEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$InitialTransactionEventImpl implements InitialTransactionEvent {
  const _$InitialTransactionEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialTransactionEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialTransactionEventImplCopyWith<_$InitialTransactionEventImpl>
      get copyWith => __$$InitialTransactionEventImplCopyWithImpl<
          _$InitialTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTransactionEvent implements CreateTransactionEvent {
  const factory InitialTransactionEvent(
          {required final CreateTransactionData data}) =
      _$InitialTransactionEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialTransactionEventImplCopyWith<_$InitialTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$EditTransactionEventImplCopyWith(_$EditTransactionEventImpl value,
          $Res Function(_$EditTransactionEventImpl) then) =
      __$$EditTransactionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditTransactionEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res,
        _$EditTransactionEventImpl>
    implements _$$EditTransactionEventImplCopyWith<$Res> {
  __$$EditTransactionEventImplCopyWithImpl(_$EditTransactionEventImpl _value,
      $Res Function(_$EditTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditTransactionEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$EditTransactionEventImpl implements EditTransactionEvent {
  const _$EditTransactionEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.edit(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTransactionEventImplCopyWith<_$EditTransactionEventImpl>
      get copyWith =>
          __$$EditTransactionEventImplCopyWithImpl<_$EditTransactionEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return edit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return edit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
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
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditTransactionEvent implements CreateTransactionEvent {
  const factory EditTransactionEvent(
      {required final CreateTransactionData data}) = _$EditTransactionEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTransactionEventImplCopyWith<_$EditTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowAccountListEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$ShowAccountListEventImplCopyWith(_$ShowAccountListEventImpl value,
          $Res Function(_$ShowAccountListEventImpl) then) =
      __$$ShowAccountListEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowAccountListEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res,
        _$ShowAccountListEventImpl>
    implements _$$ShowAccountListEventImplCopyWith<$Res> {
  __$$ShowAccountListEventImplCopyWithImpl(_$ShowAccountListEventImpl _value,
      $Res Function(_$ShowAccountListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowAccountListEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$ShowAccountListEventImpl implements ShowAccountListEvent {
  const _$ShowAccountListEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.showAccountList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAccountListEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAccountListEventImplCopyWith<_$ShowAccountListEventImpl>
      get copyWith =>
          __$$ShowAccountListEventImplCopyWithImpl<_$ShowAccountListEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return showAccountList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return showAccountList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) {
    if (showAccountList != null) {
      return showAccountList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return showAccountList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return showAccountList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (showAccountList != null) {
      return showAccountList(this);
    }
    return orElse();
  }
}

abstract class ShowAccountListEvent implements CreateTransactionEvent {
  const factory ShowAccountListEvent(
      {required final CreateTransactionData data}) = _$ShowAccountListEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowAccountListEventImplCopyWith<_$ShowAccountListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowCategoryListEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$ShowCategoryListEventImplCopyWith(
          _$ShowCategoryListEventImpl value,
          $Res Function(_$ShowCategoryListEventImpl) then) =
      __$$ShowCategoryListEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowCategoryListEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res,
        _$ShowCategoryListEventImpl>
    implements _$$ShowCategoryListEventImplCopyWith<$Res> {
  __$$ShowCategoryListEventImplCopyWithImpl(_$ShowCategoryListEventImpl _value,
      $Res Function(_$ShowCategoryListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowCategoryListEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$ShowCategoryListEventImpl implements ShowCategoryListEvent {
  const _$ShowCategoryListEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.showCategoryList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCategoryListEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCategoryListEventImplCopyWith<_$ShowCategoryListEventImpl>
      get copyWith => __$$ShowCategoryListEventImplCopyWithImpl<
          _$ShowCategoryListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return showCategoryList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return showCategoryList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) {
    if (showCategoryList != null) {
      return showCategoryList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return showCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return showCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (showCategoryList != null) {
      return showCategoryList(this);
    }
    return orElse();
  }
}

abstract class ShowCategoryListEvent implements CreateTransactionEvent {
  const factory ShowCategoryListEvent(
          {required final CreateTransactionData data}) =
      _$ShowCategoryListEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCategoryListEventImplCopyWith<_$ShowCategoryListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveTransactionEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$SaveTransactionEventImplCopyWith(_$SaveTransactionEventImpl value,
          $Res Function(_$SaveTransactionEventImpl) then) =
      __$$SaveTransactionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SaveTransactionEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res,
        _$SaveTransactionEventImpl>
    implements _$$SaveTransactionEventImplCopyWith<$Res> {
  __$$SaveTransactionEventImplCopyWithImpl(_$SaveTransactionEventImpl _value,
      $Res Function(_$SaveTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SaveTransactionEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$SaveTransactionEventImpl implements SaveTransactionEvent {
  const _$SaveTransactionEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.saveTransaction(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTransactionEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTransactionEventImplCopyWith<_$SaveTransactionEventImpl>
      get copyWith =>
          __$$SaveTransactionEventImplCopyWithImpl<_$SaveTransactionEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return saveTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return saveTransaction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) {
    if (saveTransaction != null) {
      return saveTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return saveTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return saveTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (saveTransaction != null) {
      return saveTransaction(this);
    }
    return orElse();
  }
}

abstract class SaveTransactionEvent implements CreateTransactionEvent {
  const factory SaveTransactionEvent(
      {required final CreateTransactionData data}) = _$SaveTransactionEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveTransactionEventImplCopyWith<_$SaveTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationEventImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$NavigationEventImplCopyWith(_$NavigationEventImpl value,
          $Res Function(_$NavigationEventImpl) then) =
      __$$NavigationEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NavigationEventImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res, _$NavigationEventImpl>
    implements _$$NavigationEventImplCopyWith<$Res> {
  __$$NavigationEventImplCopyWithImpl(
      _$NavigationEventImpl _value, $Res Function(_$NavigationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NavigationEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$NavigationEventImpl implements NavigationEvent {
  const _$NavigationEventImpl({required this.data});

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionEvent.navigate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationEventImplCopyWith<_$NavigationEventImpl> get copyWith =>
      __$$NavigationEventImplCopyWithImpl<_$NavigationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data) initial,
    required TResult Function(CreateTransactionData data) edit,
    required TResult Function(CreateTransactionData data) showAccountList,
    required TResult Function(CreateTransactionData data) showCategoryList,
    required TResult Function(CreateTransactionData data) saveTransaction,
    required TResult Function(CreateTransactionData data) navigate,
  }) {
    return navigate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data)? initial,
    TResult? Function(CreateTransactionData data)? edit,
    TResult? Function(CreateTransactionData data)? showAccountList,
    TResult? Function(CreateTransactionData data)? showCategoryList,
    TResult? Function(CreateTransactionData data)? saveTransaction,
    TResult? Function(CreateTransactionData data)? navigate,
  }) {
    return navigate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data)? initial,
    TResult Function(CreateTransactionData data)? edit,
    TResult Function(CreateTransactionData data)? showAccountList,
    TResult Function(CreateTransactionData data)? showCategoryList,
    TResult Function(CreateTransactionData data)? saveTransaction,
    TResult Function(CreateTransactionData data)? navigate,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionEvent value) initial,
    required TResult Function(EditTransactionEvent value) edit,
    required TResult Function(ShowAccountListEvent value) showAccountList,
    required TResult Function(ShowCategoryListEvent value) showCategoryList,
    required TResult Function(SaveTransactionEvent value) saveTransaction,
    required TResult Function(NavigationEvent value) navigate,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionEvent value)? initial,
    TResult? Function(EditTransactionEvent value)? edit,
    TResult? Function(ShowAccountListEvent value)? showAccountList,
    TResult? Function(ShowCategoryListEvent value)? showCategoryList,
    TResult? Function(SaveTransactionEvent value)? saveTransaction,
    TResult? Function(NavigationEvent value)? navigate,
  }) {
    return navigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionEvent value)? initial,
    TResult Function(EditTransactionEvent value)? edit,
    TResult Function(ShowAccountListEvent value)? showAccountList,
    TResult Function(ShowCategoryListEvent value)? showCategoryList,
    TResult Function(SaveTransactionEvent value)? saveTransaction,
    TResult Function(NavigationEvent value)? navigate,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }
}

abstract class NavigationEvent implements CreateTransactionEvent {
  const factory NavigationEvent({required final CreateTransactionData data}) =
      _$NavigationEventImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationEventImplCopyWith<_$NavigationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateTransactionState {
  CreateTransactionData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data, String? error)
        initial,
    required TResult Function(CreateTransactionData data, String? error)
        editing,
    required TResult Function(CreateTransactionData data) loading,
    required TResult Function(CreateTransactionData data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data, String? error)? initial,
    TResult? Function(CreateTransactionData data, String? error)? editing,
    TResult? Function(CreateTransactionData data)? loading,
    TResult? Function(CreateTransactionData data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data, String? error)? initial,
    TResult Function(CreateTransactionData data, String? error)? editing,
    TResult Function(CreateTransactionData data)? loading,
    TResult Function(CreateTransactionData data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionState value) initial,
    required TResult Function(EditTransactionState value) editing,
    required TResult Function(LoadingTransactionState value) loading,
    required TResult Function(SuccessTransactionState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionState value)? initial,
    TResult? Function(EditTransactionState value)? editing,
    TResult? Function(LoadingTransactionState value)? loading,
    TResult? Function(SuccessTransactionState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionState value)? initial,
    TResult Function(EditTransactionState value)? editing,
    TResult Function(LoadingTransactionState value)? loading,
    TResult Function(SuccessTransactionState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTransactionStateCopyWith<CreateTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionStateCopyWith<$Res> {
  factory $CreateTransactionStateCopyWith(CreateTransactionState value,
          $Res Function(CreateTransactionState) then) =
      _$CreateTransactionStateCopyWithImpl<$Res, CreateTransactionState>;
  @useResult
  $Res call({CreateTransactionData data});

  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateTransactionStateCopyWithImpl<$Res,
        $Val extends CreateTransactionState>
    implements $CreateTransactionStateCopyWith<$Res> {
  _$CreateTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ) as $Val);
  }

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateTransactionDataCopyWith<$Res> get data {
    return $CreateTransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialTransactionStateImplCopyWith<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  factory _$$InitialTransactionStateImplCopyWith(
          _$InitialTransactionStateImpl value,
          $Res Function(_$InitialTransactionStateImpl) then) =
      __$$InitialTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data, String? error});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitialTransactionStateImplCopyWithImpl<$Res>
    extends _$CreateTransactionStateCopyWithImpl<$Res,
        _$InitialTransactionStateImpl>
    implements _$$InitialTransactionStateImplCopyWith<$Res> {
  __$$InitialTransactionStateImplCopyWithImpl(
      _$InitialTransactionStateImpl _value,
      $Res Function(_$InitialTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialTransactionStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialTransactionStateImpl implements InitialTransactionState {
  const _$InitialTransactionStateImpl(this.data, [this.error = null]);

  @override
  final CreateTransactionData data;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'CreateTransactionState.initial(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialTransactionStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialTransactionStateImplCopyWith<_$InitialTransactionStateImpl>
      get copyWith => __$$InitialTransactionStateImplCopyWithImpl<
          _$InitialTransactionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data, String? error)
        initial,
    required TResult Function(CreateTransactionData data, String? error)
        editing,
    required TResult Function(CreateTransactionData data) loading,
    required TResult Function(CreateTransactionData data) success,
  }) {
    return initial(data, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data, String? error)? initial,
    TResult? Function(CreateTransactionData data, String? error)? editing,
    TResult? Function(CreateTransactionData data)? loading,
    TResult? Function(CreateTransactionData data)? success,
  }) {
    return initial?.call(data, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data, String? error)? initial,
    TResult Function(CreateTransactionData data, String? error)? editing,
    TResult Function(CreateTransactionData data)? loading,
    TResult Function(CreateTransactionData data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionState value) initial,
    required TResult Function(EditTransactionState value) editing,
    required TResult Function(LoadingTransactionState value) loading,
    required TResult Function(SuccessTransactionState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionState value)? initial,
    TResult? Function(EditTransactionState value)? editing,
    TResult? Function(LoadingTransactionState value)? loading,
    TResult? Function(SuccessTransactionState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionState value)? initial,
    TResult Function(EditTransactionState value)? editing,
    TResult Function(LoadingTransactionState value)? loading,
    TResult Function(SuccessTransactionState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTransactionState implements CreateTransactionState {
  const factory InitialTransactionState(final CreateTransactionData data,
      [final String? error]) = _$InitialTransactionStateImpl;

  @override
  CreateTransactionData get data;
  String? get error;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialTransactionStateImplCopyWith<_$InitialTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionStateImplCopyWith<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  factory _$$EditTransactionStateImplCopyWith(_$EditTransactionStateImpl value,
          $Res Function(_$EditTransactionStateImpl) then) =
      __$$EditTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data, String? error});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditTransactionStateImplCopyWithImpl<$Res>
    extends _$CreateTransactionStateCopyWithImpl<$Res,
        _$EditTransactionStateImpl>
    implements _$$EditTransactionStateImplCopyWith<$Res> {
  __$$EditTransactionStateImplCopyWithImpl(_$EditTransactionStateImpl _value,
      $Res Function(_$EditTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$EditTransactionStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditTransactionStateImpl implements EditTransactionState {
  const _$EditTransactionStateImpl(this.data, [this.error = null]);

  @override
  final CreateTransactionData data;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'CreateTransactionState.editing(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTransactionStateImplCopyWith<_$EditTransactionStateImpl>
      get copyWith =>
          __$$EditTransactionStateImplCopyWithImpl<_$EditTransactionStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data, String? error)
        initial,
    required TResult Function(CreateTransactionData data, String? error)
        editing,
    required TResult Function(CreateTransactionData data) loading,
    required TResult Function(CreateTransactionData data) success,
  }) {
    return editing(data, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data, String? error)? initial,
    TResult? Function(CreateTransactionData data, String? error)? editing,
    TResult? Function(CreateTransactionData data)? loading,
    TResult? Function(CreateTransactionData data)? success,
  }) {
    return editing?.call(data, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data, String? error)? initial,
    TResult Function(CreateTransactionData data, String? error)? editing,
    TResult Function(CreateTransactionData data)? loading,
    TResult Function(CreateTransactionData data)? success,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(data, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTransactionState value) initial,
    required TResult Function(EditTransactionState value) editing,
    required TResult Function(LoadingTransactionState value) loading,
    required TResult Function(SuccessTransactionState value) success,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionState value)? initial,
    TResult? Function(EditTransactionState value)? editing,
    TResult? Function(LoadingTransactionState value)? loading,
    TResult? Function(SuccessTransactionState value)? success,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionState value)? initial,
    TResult Function(EditTransactionState value)? editing,
    TResult Function(LoadingTransactionState value)? loading,
    TResult Function(SuccessTransactionState value)? success,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class EditTransactionState implements CreateTransactionState {
  const factory EditTransactionState(final CreateTransactionData data,
      [final String? error]) = _$EditTransactionStateImpl;

  @override
  CreateTransactionData get data;
  String? get error;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTransactionStateImplCopyWith<_$EditTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTransactionStateImplCopyWith<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  factory _$$LoadingTransactionStateImplCopyWith(
          _$LoadingTransactionStateImpl value,
          $Res Function(_$LoadingTransactionStateImpl) then) =
      __$$LoadingTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadingTransactionStateImplCopyWithImpl<$Res>
    extends _$CreateTransactionStateCopyWithImpl<$Res,
        _$LoadingTransactionStateImpl>
    implements _$$LoadingTransactionStateImplCopyWith<$Res> {
  __$$LoadingTransactionStateImplCopyWithImpl(
      _$LoadingTransactionStateImpl _value,
      $Res Function(_$LoadingTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadingTransactionStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$LoadingTransactionStateImpl implements LoadingTransactionState {
  const _$LoadingTransactionStateImpl(this.data);

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionState.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTransactionStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingTransactionStateImplCopyWith<_$LoadingTransactionStateImpl>
      get copyWith => __$$LoadingTransactionStateImplCopyWithImpl<
          _$LoadingTransactionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data, String? error)
        initial,
    required TResult Function(CreateTransactionData data, String? error)
        editing,
    required TResult Function(CreateTransactionData data) loading,
    required TResult Function(CreateTransactionData data) success,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data, String? error)? initial,
    TResult? Function(CreateTransactionData data, String? error)? editing,
    TResult? Function(CreateTransactionData data)? loading,
    TResult? Function(CreateTransactionData data)? success,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data, String? error)? initial,
    TResult Function(CreateTransactionData data, String? error)? editing,
    TResult Function(CreateTransactionData data)? loading,
    TResult Function(CreateTransactionData data)? success,
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
    required TResult Function(InitialTransactionState value) initial,
    required TResult Function(EditTransactionState value) editing,
    required TResult Function(LoadingTransactionState value) loading,
    required TResult Function(SuccessTransactionState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionState value)? initial,
    TResult? Function(EditTransactionState value)? editing,
    TResult? Function(LoadingTransactionState value)? loading,
    TResult? Function(SuccessTransactionState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionState value)? initial,
    TResult Function(EditTransactionState value)? editing,
    TResult Function(LoadingTransactionState value)? loading,
    TResult Function(SuccessTransactionState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTransactionState implements CreateTransactionState {
  const factory LoadingTransactionState(final CreateTransactionData data) =
      _$LoadingTransactionStateImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingTransactionStateImplCopyWith<_$LoadingTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessTransactionStateImplCopyWith<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  factory _$$SuccessTransactionStateImplCopyWith(
          _$SuccessTransactionStateImpl value,
          $Res Function(_$SuccessTransactionStateImpl) then) =
      __$$SuccessTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionData data});

  @override
  $CreateTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessTransactionStateImplCopyWithImpl<$Res>
    extends _$CreateTransactionStateCopyWithImpl<$Res,
        _$SuccessTransactionStateImpl>
    implements _$$SuccessTransactionStateImplCopyWith<$Res> {
  __$$SuccessTransactionStateImplCopyWithImpl(
      _$SuccessTransactionStateImpl _value,
      $Res Function(_$SuccessTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessTransactionStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateTransactionData,
    ));
  }
}

/// @nodoc

class _$SuccessTransactionStateImpl implements SuccessTransactionState {
  const _$SuccessTransactionStateImpl(this.data);

  @override
  final CreateTransactionData data;

  @override
  String toString() {
    return 'CreateTransactionState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessTransactionStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessTransactionStateImplCopyWith<_$SuccessTransactionStateImpl>
      get copyWith => __$$SuccessTransactionStateImplCopyWithImpl<
          _$SuccessTransactionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateTransactionData data, String? error)
        initial,
    required TResult Function(CreateTransactionData data, String? error)
        editing,
    required TResult Function(CreateTransactionData data) loading,
    required TResult Function(CreateTransactionData data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateTransactionData data, String? error)? initial,
    TResult? Function(CreateTransactionData data, String? error)? editing,
    TResult? Function(CreateTransactionData data)? loading,
    TResult? Function(CreateTransactionData data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateTransactionData data, String? error)? initial,
    TResult Function(CreateTransactionData data, String? error)? editing,
    TResult Function(CreateTransactionData data)? loading,
    TResult Function(CreateTransactionData data)? success,
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
    required TResult Function(InitialTransactionState value) initial,
    required TResult Function(EditTransactionState value) editing,
    required TResult Function(LoadingTransactionState value) loading,
    required TResult Function(SuccessTransactionState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialTransactionState value)? initial,
    TResult? Function(EditTransactionState value)? editing,
    TResult? Function(LoadingTransactionState value)? loading,
    TResult? Function(SuccessTransactionState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTransactionState value)? initial,
    TResult Function(EditTransactionState value)? editing,
    TResult Function(LoadingTransactionState value)? loading,
    TResult Function(SuccessTransactionState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessTransactionState implements CreateTransactionState {
  const factory SuccessTransactionState(final CreateTransactionData data) =
      _$SuccessTransactionStateImpl;

  @override
  CreateTransactionData get data;

  /// Create a copy of CreateTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessTransactionStateImplCopyWith<_$SuccessTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
