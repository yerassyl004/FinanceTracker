// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Account account) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Account account)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Account account)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAccounts value) loadAccounts,
    required TResult Function(DeleteAccounts value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAccounts value)? loadAccounts,
    TResult? Function(DeleteAccounts value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAccounts value)? loadAccounts,
    TResult Function(DeleteAccounts value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEventCopyWith<$Res> {
  factory $AccountsEventCopyWith(
          AccountsEvent value, $Res Function(AccountsEvent) then) =
      _$AccountsEventCopyWithImpl<$Res, AccountsEvent>;
}

/// @nodoc
class _$AccountsEventCopyWithImpl<$Res, $Val extends AccountsEvent>
    implements $AccountsEventCopyWith<$Res> {
  _$AccountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAccountsImplCopyWith<$Res> {
  factory _$$LoadAccountsImplCopyWith(
          _$LoadAccountsImpl value, $Res Function(_$LoadAccountsImpl) then) =
      __$$LoadAccountsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAccountsImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$LoadAccountsImpl>
    implements _$$LoadAccountsImplCopyWith<$Res> {
  __$$LoadAccountsImplCopyWithImpl(
      _$LoadAccountsImpl _value, $Res Function(_$LoadAccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAccountsImpl implements LoadAccounts {
  const _$LoadAccountsImpl();

  @override
  String toString() {
    return 'AccountsEvent.loadAccounts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAccountsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Account account) deleteAccount,
  }) {
    return loadAccounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Account account)? deleteAccount,
  }) {
    return loadAccounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Account account)? deleteAccount,
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
    required TResult Function(LoadAccounts value) loadAccounts,
    required TResult Function(DeleteAccounts value) deleteAccount,
  }) {
    return loadAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAccounts value)? loadAccounts,
    TResult? Function(DeleteAccounts value)? deleteAccount,
  }) {
    return loadAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAccounts value)? loadAccounts,
    TResult Function(DeleteAccounts value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loadAccounts != null) {
      return loadAccounts(this);
    }
    return orElse();
  }
}

abstract class LoadAccounts implements AccountsEvent {
  const factory LoadAccounts() = _$LoadAccountsImpl;
}

/// @nodoc
abstract class _$$DeleteAccountsImplCopyWith<$Res> {
  factory _$$DeleteAccountsImplCopyWith(_$DeleteAccountsImpl value,
          $Res Function(_$DeleteAccountsImpl) then) =
      __$$DeleteAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$DeleteAccountsImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$DeleteAccountsImpl>
    implements _$$DeleteAccountsImplCopyWith<$Res> {
  __$$DeleteAccountsImplCopyWithImpl(
      _$DeleteAccountsImpl _value, $Res Function(_$DeleteAccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$DeleteAccountsImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$DeleteAccountsImpl implements DeleteAccounts {
  const _$DeleteAccountsImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountsEvent.deleteAccount(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountsImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountsImplCopyWith<_$DeleteAccountsImpl> get copyWith =>
      __$$DeleteAccountsImplCopyWithImpl<_$DeleteAccountsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAccounts,
    required TResult Function(Account account) deleteAccount,
  }) {
    return deleteAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAccounts,
    TResult? Function(Account account)? deleteAccount,
  }) {
    return deleteAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAccounts,
    TResult Function(Account account)? deleteAccount,
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
    required TResult Function(LoadAccounts value) loadAccounts,
    required TResult Function(DeleteAccounts value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAccounts value)? loadAccounts,
    TResult? Function(DeleteAccounts value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAccounts value)? loadAccounts,
    TResult Function(DeleteAccounts value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccounts implements AccountsEvent {
  const factory DeleteAccounts(final Account account) = _$DeleteAccountsImpl;

  Account get account;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountsImplCopyWith<_$DeleteAccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Account> accounts) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Account> accounts)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Account> accounts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountsLoaded value) loaded,
    required TResult Function(AccountError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountsLoaded value)? loaded,
    TResult? Function(AccountError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountsLoaded value)? loaded,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsStateCopyWith<$Res> {
  factory $AccountsStateCopyWith(
          AccountsState value, $Res Function(AccountsState) then) =
      _$AccountsStateCopyWithImpl<$Res, AccountsState>;
}

/// @nodoc
class _$AccountsStateCopyWithImpl<$Res, $Val extends AccountsState>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AccountInitialImplCopyWith<$Res> {
  factory _$$AccountInitialImplCopyWith(_$AccountInitialImpl value,
          $Res Function(_$AccountInitialImpl) then) =
      __$$AccountInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountInitialImpl>
    implements _$$AccountInitialImplCopyWith<$Res> {
  __$$AccountInitialImplCopyWithImpl(
      _$AccountInitialImpl _value, $Res Function(_$AccountInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AccountInitialImpl implements AccountInitial {
  const _$AccountInitialImpl();

  @override
  String toString() {
    return 'AccountsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Account> accounts) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Account> accounts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Account> accounts)? loaded,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountsLoaded value) loaded,
    required TResult Function(AccountError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountsLoaded value)? loaded,
    TResult? Function(AccountError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountsLoaded value)? loaded,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountInitial implements AccountsState {
  const factory AccountInitial() = _$AccountInitialImpl;
}

/// @nodoc
abstract class _$$AccountLoadingImplCopyWith<$Res> {
  factory _$$AccountLoadingImplCopyWith(_$AccountLoadingImpl value,
          $Res Function(_$AccountLoadingImpl) then) =
      __$$AccountLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadingImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountLoadingImpl>
    implements _$$AccountLoadingImplCopyWith<$Res> {
  __$$AccountLoadingImplCopyWithImpl(
      _$AccountLoadingImpl _value, $Res Function(_$AccountLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AccountLoadingImpl implements AccountLoading {
  const _$AccountLoadingImpl();

  @override
  String toString() {
    return 'AccountsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Account> accounts) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Account> accounts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Account> accounts)? loaded,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountsLoaded value) loaded,
    required TResult Function(AccountError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountsLoaded value)? loaded,
    TResult? Function(AccountError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountsLoaded value)? loaded,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountLoading implements AccountsState {
  const factory AccountLoading() = _$AccountLoadingImpl;
}

/// @nodoc
abstract class _$$AccountsLoadedImplCopyWith<$Res> {
  factory _$$AccountsLoadedImplCopyWith(_$AccountsLoadedImpl value,
          $Res Function(_$AccountsLoadedImpl) then) =
      __$$AccountsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$AccountsLoadedImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountsLoadedImpl>
    implements _$$AccountsLoadedImplCopyWith<$Res> {
  __$$AccountsLoadedImplCopyWithImpl(
      _$AccountsLoadedImpl _value, $Res Function(_$AccountsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$AccountsLoadedImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$AccountsLoadedImpl implements AccountsLoaded {
  const _$AccountsLoadedImpl(final List<Account> accounts)
      : _accounts = accounts;

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'AccountsState.loaded(accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsLoadedImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsLoadedImplCopyWith<_$AccountsLoadedImpl> get copyWith =>
      __$$AccountsLoadedImplCopyWithImpl<_$AccountsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Account> accounts) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Account> accounts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Account> accounts)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountsLoaded value) loaded,
    required TResult Function(AccountError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountsLoaded value)? loaded,
    TResult? Function(AccountError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountsLoaded value)? loaded,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AccountsLoaded implements AccountsState {
  const factory AccountsLoaded(final List<Account> accounts) =
      _$AccountsLoadedImpl;

  List<Account> get accounts;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountsLoadedImplCopyWith<_$AccountsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountErrorImplCopyWith<$Res> {
  factory _$$AccountErrorImplCopyWith(
          _$AccountErrorImpl value, $Res Function(_$AccountErrorImpl) then) =
      __$$AccountErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AccountErrorImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountErrorImpl>
    implements _$$AccountErrorImplCopyWith<$Res> {
  __$$AccountErrorImplCopyWithImpl(
      _$AccountErrorImpl _value, $Res Function(_$AccountErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AccountErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountErrorImpl implements AccountError {
  const _$AccountErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AccountsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountErrorImplCopyWith<_$AccountErrorImpl> get copyWith =>
      __$$AccountErrorImplCopyWithImpl<_$AccountErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Account> accounts) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Account> accounts)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Account> accounts)? loaded,
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
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(AccountsLoaded value) loaded,
    required TResult Function(AccountError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(AccountsLoaded value)? loaded,
    TResult? Function(AccountError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(AccountsLoaded value)? loaded,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountError implements AccountsState {
  const factory AccountError(final String message) = _$AccountErrorImpl;

  String get message;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountErrorImplCopyWith<_$AccountErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
