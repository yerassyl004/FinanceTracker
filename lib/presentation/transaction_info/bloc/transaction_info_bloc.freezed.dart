// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionInfoData {
  Transaction get transaction => throw _privateConstructorUsedError;

  /// Create a copy of TransactionInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionInfoDataCopyWith<TransactionInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInfoDataCopyWith<$Res> {
  factory $TransactionInfoDataCopyWith(
          TransactionInfoData value, $Res Function(TransactionInfoData) then) =
      _$TransactionInfoDataCopyWithImpl<$Res, TransactionInfoData>;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class _$TransactionInfoDataCopyWithImpl<$Res, $Val extends TransactionInfoData>
    implements $TransactionInfoDataCopyWith<$Res> {
  _$TransactionInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionInfoDataImplCopyWith<$Res>
    implements $TransactionInfoDataCopyWith<$Res> {
  factory _$$TransactionInfoDataImplCopyWith(_$TransactionInfoDataImpl value,
          $Res Function(_$TransactionInfoDataImpl) then) =
      __$$TransactionInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$TransactionInfoDataImplCopyWithImpl<$Res>
    extends _$TransactionInfoDataCopyWithImpl<$Res, _$TransactionInfoDataImpl>
    implements _$$TransactionInfoDataImplCopyWith<$Res> {
  __$$TransactionInfoDataImplCopyWithImpl(_$TransactionInfoDataImpl _value,
      $Res Function(_$TransactionInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$TransactionInfoDataImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$TransactionInfoDataImpl
    with DiagnosticableTreeMixin
    implements _TransactionInfoData {
  const _$TransactionInfoDataImpl({required this.transaction});

  @override
  final Transaction transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoData(transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoData'))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoDataImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of TransactionInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInfoDataImplCopyWith<_$TransactionInfoDataImpl> get copyWith =>
      __$$TransactionInfoDataImplCopyWithImpl<_$TransactionInfoDataImpl>(
          this, _$identity);
}

abstract class _TransactionInfoData implements TransactionInfoData {
  const factory _TransactionInfoData({required final Transaction transaction}) =
      _$TransactionInfoDataImpl;

  @override
  Transaction get transaction;

  /// Create a copy of TransactionInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionInfoDataImplCopyWith<_$TransactionInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Navigate route) navigate,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(TransactionInfoData data) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Navigate route)? navigate,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(TransactionInfoData data)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Navigate route)? navigate,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(TransactionInfoData data)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateTransactionInfoEvent value) navigate,
    required TResult Function(ShowTransactionInfoEvent value) show,
    required TResult Function(RemoveTransactionInfoEvent value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateTransactionInfoEvent value)? navigate,
    TResult? Function(ShowTransactionInfoEvent value)? show,
    TResult? Function(RemoveTransactionInfoEvent value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTransactionInfoEvent value)? navigate,
    TResult Function(ShowTransactionInfoEvent value)? show,
    TResult Function(RemoveTransactionInfoEvent value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInfoEventCopyWith<$Res> {
  factory $TransactionInfoEventCopyWith(TransactionInfoEvent value,
          $Res Function(TransactionInfoEvent) then) =
      _$TransactionInfoEventCopyWithImpl<$Res, TransactionInfoEvent>;
}

/// @nodoc
class _$TransactionInfoEventCopyWithImpl<$Res,
        $Val extends TransactionInfoEvent>
    implements $TransactionInfoEventCopyWith<$Res> {
  _$TransactionInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateTransactionInfoEventImplCopyWith<$Res> {
  factory _$$NavigateTransactionInfoEventImplCopyWith(
          _$NavigateTransactionInfoEventImpl value,
          $Res Function(_$NavigateTransactionInfoEventImpl) then) =
      __$$NavigateTransactionInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Navigate route});
}

/// @nodoc
class __$$NavigateTransactionInfoEventImplCopyWithImpl<$Res>
    extends _$TransactionInfoEventCopyWithImpl<$Res,
        _$NavigateTransactionInfoEventImpl>
    implements _$$NavigateTransactionInfoEventImplCopyWith<$Res> {
  __$$NavigateTransactionInfoEventImplCopyWithImpl(
      _$NavigateTransactionInfoEventImpl _value,
      $Res Function(_$NavigateTransactionInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_$NavigateTransactionInfoEventImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Navigate,
    ));
  }
}

/// @nodoc

class _$NavigateTransactionInfoEventImpl
    with DiagnosticableTreeMixin
    implements NavigateTransactionInfoEvent {
  const _$NavigateTransactionInfoEventImpl({required this.route});

  @override
  final Navigate route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoEvent.navigate(route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoEvent.navigate'))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateTransactionInfoEventImpl &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateTransactionInfoEventImplCopyWith<
          _$NavigateTransactionInfoEventImpl>
      get copyWith => __$$NavigateTransactionInfoEventImplCopyWithImpl<
          _$NavigateTransactionInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Navigate route) navigate,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(TransactionInfoData data) remove,
  }) {
    return navigate(route);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Navigate route)? navigate,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(TransactionInfoData data)? remove,
  }) {
    return navigate?.call(route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Navigate route)? navigate,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(TransactionInfoData data)? remove,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateTransactionInfoEvent value) navigate,
    required TResult Function(ShowTransactionInfoEvent value) show,
    required TResult Function(RemoveTransactionInfoEvent value) remove,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateTransactionInfoEvent value)? navigate,
    TResult? Function(ShowTransactionInfoEvent value)? show,
    TResult? Function(RemoveTransactionInfoEvent value)? remove,
  }) {
    return navigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTransactionInfoEvent value)? navigate,
    TResult Function(ShowTransactionInfoEvent value)? show,
    TResult Function(RemoveTransactionInfoEvent value)? remove,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }
}

abstract class NavigateTransactionInfoEvent implements TransactionInfoEvent {
  const factory NavigateTransactionInfoEvent({required final Navigate route}) =
      _$NavigateTransactionInfoEventImpl;

  Navigate get route;

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateTransactionInfoEventImplCopyWith<
          _$NavigateTransactionInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowTransactionInfoEventImplCopyWith<$Res> {
  factory _$$ShowTransactionInfoEventImplCopyWith(
          _$ShowTransactionInfoEventImpl value,
          $Res Function(_$ShowTransactionInfoEventImpl) then) =
      __$$ShowTransactionInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionInfoData data});

  $TransactionInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowTransactionInfoEventImplCopyWithImpl<$Res>
    extends _$TransactionInfoEventCopyWithImpl<$Res,
        _$ShowTransactionInfoEventImpl>
    implements _$$ShowTransactionInfoEventImplCopyWith<$Res> {
  __$$ShowTransactionInfoEventImplCopyWithImpl(
      _$ShowTransactionInfoEventImpl _value,
      $Res Function(_$ShowTransactionInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowTransactionInfoEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionInfoData,
    ));
  }

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionInfoDataCopyWith<$Res> get data {
    return $TransactionInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ShowTransactionInfoEventImpl
    with DiagnosticableTreeMixin
    implements ShowTransactionInfoEvent {
  const _$ShowTransactionInfoEventImpl({required this.data});

  @override
  final TransactionInfoData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoEvent.show(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoEvent.show'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowTransactionInfoEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowTransactionInfoEventImplCopyWith<_$ShowTransactionInfoEventImpl>
      get copyWith => __$$ShowTransactionInfoEventImplCopyWithImpl<
          _$ShowTransactionInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Navigate route) navigate,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(TransactionInfoData data) remove,
  }) {
    return show(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Navigate route)? navigate,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(TransactionInfoData data)? remove,
  }) {
    return show?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Navigate route)? navigate,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(TransactionInfoData data)? remove,
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
    required TResult Function(NavigateTransactionInfoEvent value) navigate,
    required TResult Function(ShowTransactionInfoEvent value) show,
    required TResult Function(RemoveTransactionInfoEvent value) remove,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateTransactionInfoEvent value)? navigate,
    TResult? Function(ShowTransactionInfoEvent value)? show,
    TResult? Function(RemoveTransactionInfoEvent value)? remove,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTransactionInfoEvent value)? navigate,
    TResult Function(ShowTransactionInfoEvent value)? show,
    TResult Function(RemoveTransactionInfoEvent value)? remove,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowTransactionInfoEvent implements TransactionInfoEvent {
  const factory ShowTransactionInfoEvent(
          {required final TransactionInfoData data}) =
      _$ShowTransactionInfoEventImpl;

  TransactionInfoData get data;

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowTransactionInfoEventImplCopyWith<_$ShowTransactionInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTransactionInfoEventImplCopyWith<$Res> {
  factory _$$RemoveTransactionInfoEventImplCopyWith(
          _$RemoveTransactionInfoEventImpl value,
          $Res Function(_$RemoveTransactionInfoEventImpl) then) =
      __$$RemoveTransactionInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionInfoData data});

  $TransactionInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RemoveTransactionInfoEventImplCopyWithImpl<$Res>
    extends _$TransactionInfoEventCopyWithImpl<$Res,
        _$RemoveTransactionInfoEventImpl>
    implements _$$RemoveTransactionInfoEventImplCopyWith<$Res> {
  __$$RemoveTransactionInfoEventImplCopyWithImpl(
      _$RemoveTransactionInfoEventImpl _value,
      $Res Function(_$RemoveTransactionInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RemoveTransactionInfoEventImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionInfoData,
    ));
  }

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionInfoDataCopyWith<$Res> get data {
    return $TransactionInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$RemoveTransactionInfoEventImpl
    with DiagnosticableTreeMixin
    implements RemoveTransactionInfoEvent {
  const _$RemoveTransactionInfoEventImpl({required this.data});

  @override
  final TransactionInfoData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoEvent.remove(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoEvent.remove'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTransactionInfoEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTransactionInfoEventImplCopyWith<_$RemoveTransactionInfoEventImpl>
      get copyWith => __$$RemoveTransactionInfoEventImplCopyWithImpl<
          _$RemoveTransactionInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Navigate route) navigate,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(TransactionInfoData data) remove,
  }) {
    return remove(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Navigate route)? navigate,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(TransactionInfoData data)? remove,
  }) {
    return remove?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Navigate route)? navigate,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(TransactionInfoData data)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateTransactionInfoEvent value) navigate,
    required TResult Function(ShowTransactionInfoEvent value) show,
    required TResult Function(RemoveTransactionInfoEvent value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateTransactionInfoEvent value)? navigate,
    TResult? Function(ShowTransactionInfoEvent value)? show,
    TResult? Function(RemoveTransactionInfoEvent value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTransactionInfoEvent value)? navigate,
    TResult Function(ShowTransactionInfoEvent value)? show,
    TResult Function(RemoveTransactionInfoEvent value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class RemoveTransactionInfoEvent implements TransactionInfoEvent {
  const factory RemoveTransactionInfoEvent(
          {required final TransactionInfoData data}) =
      _$RemoveTransactionInfoEventImpl;

  TransactionInfoData get data;

  /// Create a copy of TransactionInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTransactionInfoEventImplCopyWith<_$RemoveTransactionInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInfoInitial value) initial,
    required TResult Function(TransactionInfoLoading value) loading,
    required TResult Function(TransactionInfoShow value) show,
    required TResult Function(TransactionInfoError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInfoInitial value)? initial,
    TResult? Function(TransactionInfoLoading value)? loading,
    TResult? Function(TransactionInfoShow value)? show,
    TResult? Function(TransactionInfoError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInfoInitial value)? initial,
    TResult Function(TransactionInfoLoading value)? loading,
    TResult Function(TransactionInfoShow value)? show,
    TResult Function(TransactionInfoError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInfoStateCopyWith<$Res> {
  factory $TransactionInfoStateCopyWith(TransactionInfoState value,
          $Res Function(TransactionInfoState) then) =
      _$TransactionInfoStateCopyWithImpl<$Res, TransactionInfoState>;
}

/// @nodoc
class _$TransactionInfoStateCopyWithImpl<$Res,
        $Val extends TransactionInfoState>
    implements $TransactionInfoStateCopyWith<$Res> {
  _$TransactionInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionInfoInitialImplCopyWith<$Res> {
  factory _$$TransactionInfoInitialImplCopyWith(
          _$TransactionInfoInitialImpl value,
          $Res Function(_$TransactionInfoInitialImpl) then) =
      __$$TransactionInfoInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInfoInitialImplCopyWithImpl<$Res>
    extends _$TransactionInfoStateCopyWithImpl<$Res,
        _$TransactionInfoInitialImpl>
    implements _$$TransactionInfoInitialImplCopyWith<$Res> {
  __$$TransactionInfoInitialImplCopyWithImpl(
      _$TransactionInfoInitialImpl _value,
      $Res Function(_$TransactionInfoInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionInfoInitialImpl
    with DiagnosticableTreeMixin
    implements TransactionInfoInitial {
  const _$TransactionInfoInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TransactionInfoData data)? show,
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
    required TResult Function(TransactionInfoInitial value) initial,
    required TResult Function(TransactionInfoLoading value) loading,
    required TResult Function(TransactionInfoShow value) show,
    required TResult Function(TransactionInfoError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInfoInitial value)? initial,
    TResult? Function(TransactionInfoLoading value)? loading,
    TResult? Function(TransactionInfoShow value)? show,
    TResult? Function(TransactionInfoError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInfoInitial value)? initial,
    TResult Function(TransactionInfoLoading value)? loading,
    TResult Function(TransactionInfoShow value)? show,
    TResult Function(TransactionInfoError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInfoInitial implements TransactionInfoState {
  const factory TransactionInfoInitial() = _$TransactionInfoInitialImpl;
}

/// @nodoc
abstract class _$$TransactionInfoLoadingImplCopyWith<$Res> {
  factory _$$TransactionInfoLoadingImplCopyWith(
          _$TransactionInfoLoadingImpl value,
          $Res Function(_$TransactionInfoLoadingImpl) then) =
      __$$TransactionInfoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionInfoLoadingImplCopyWithImpl<$Res>
    extends _$TransactionInfoStateCopyWithImpl<$Res,
        _$TransactionInfoLoadingImpl>
    implements _$$TransactionInfoLoadingImplCopyWith<$Res> {
  __$$TransactionInfoLoadingImplCopyWithImpl(
      _$TransactionInfoLoadingImpl _value,
      $Res Function(_$TransactionInfoLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionInfoLoadingImpl
    with DiagnosticableTreeMixin
    implements TransactionInfoLoading {
  const _$TransactionInfoLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TransactionInfoData data)? show,
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
    required TResult Function(TransactionInfoInitial value) initial,
    required TResult Function(TransactionInfoLoading value) loading,
    required TResult Function(TransactionInfoShow value) show,
    required TResult Function(TransactionInfoError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInfoInitial value)? initial,
    TResult? Function(TransactionInfoLoading value)? loading,
    TResult? Function(TransactionInfoShow value)? show,
    TResult? Function(TransactionInfoError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInfoInitial value)? initial,
    TResult Function(TransactionInfoLoading value)? loading,
    TResult Function(TransactionInfoShow value)? show,
    TResult Function(TransactionInfoError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionInfoLoading implements TransactionInfoState {
  const factory TransactionInfoLoading() = _$TransactionInfoLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionInfoShowImplCopyWith<$Res> {
  factory _$$TransactionInfoShowImplCopyWith(_$TransactionInfoShowImpl value,
          $Res Function(_$TransactionInfoShowImpl) then) =
      __$$TransactionInfoShowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionInfoData data});

  $TransactionInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransactionInfoShowImplCopyWithImpl<$Res>
    extends _$TransactionInfoStateCopyWithImpl<$Res, _$TransactionInfoShowImpl>
    implements _$$TransactionInfoShowImplCopyWith<$Res> {
  __$$TransactionInfoShowImplCopyWithImpl(_$TransactionInfoShowImpl _value,
      $Res Function(_$TransactionInfoShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TransactionInfoShowImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionInfoData,
    ));
  }

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionInfoDataCopyWith<$Res> get data {
    return $TransactionInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$TransactionInfoShowImpl
    with DiagnosticableTreeMixin
    implements TransactionInfoShow {
  const _$TransactionInfoShowImpl({required this.data});

  @override
  final TransactionInfoData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoState.show(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoState.show'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoShowImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInfoShowImplCopyWith<_$TransactionInfoShowImpl> get copyWith =>
      __$$TransactionInfoShowImplCopyWithImpl<_$TransactionInfoShowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(String message) error,
  }) {
    return show(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(String message)? error,
  }) {
    return show?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TransactionInfoData data)? show,
    TResult Function(String message)? error,
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
    required TResult Function(TransactionInfoInitial value) initial,
    required TResult Function(TransactionInfoLoading value) loading,
    required TResult Function(TransactionInfoShow value) show,
    required TResult Function(TransactionInfoError value) error,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInfoInitial value)? initial,
    TResult? Function(TransactionInfoLoading value)? loading,
    TResult? Function(TransactionInfoShow value)? show,
    TResult? Function(TransactionInfoError value)? error,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInfoInitial value)? initial,
    TResult Function(TransactionInfoLoading value)? loading,
    TResult Function(TransactionInfoShow value)? show,
    TResult Function(TransactionInfoError value)? error,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class TransactionInfoShow implements TransactionInfoState {
  const factory TransactionInfoShow({required final TransactionInfoData data}) =
      _$TransactionInfoShowImpl;

  TransactionInfoData get data;

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionInfoShowImplCopyWith<_$TransactionInfoShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionInfoErrorImplCopyWith<$Res> {
  factory _$$TransactionInfoErrorImplCopyWith(_$TransactionInfoErrorImpl value,
          $Res Function(_$TransactionInfoErrorImpl) then) =
      __$$TransactionInfoErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransactionInfoErrorImplCopyWithImpl<$Res>
    extends _$TransactionInfoStateCopyWithImpl<$Res, _$TransactionInfoErrorImpl>
    implements _$$TransactionInfoErrorImplCopyWith<$Res> {
  __$$TransactionInfoErrorImplCopyWithImpl(_$TransactionInfoErrorImpl _value,
      $Res Function(_$TransactionInfoErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransactionInfoErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionInfoErrorImpl
    with DiagnosticableTreeMixin
    implements TransactionInfoError {
  const _$TransactionInfoErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionInfoState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionInfoState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInfoErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInfoErrorImplCopyWith<_$TransactionInfoErrorImpl>
      get copyWith =>
          __$$TransactionInfoErrorImplCopyWithImpl<_$TransactionInfoErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TransactionInfoData data) show,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TransactionInfoData data)? show,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TransactionInfoData data)? show,
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
    required TResult Function(TransactionInfoInitial value) initial,
    required TResult Function(TransactionInfoLoading value) loading,
    required TResult Function(TransactionInfoShow value) show,
    required TResult Function(TransactionInfoError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInfoInitial value)? initial,
    TResult? Function(TransactionInfoLoading value)? loading,
    TResult? Function(TransactionInfoShow value)? show,
    TResult? Function(TransactionInfoError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInfoInitial value)? initial,
    TResult Function(TransactionInfoLoading value)? loading,
    TResult Function(TransactionInfoShow value)? show,
    TResult Function(TransactionInfoError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionInfoError implements TransactionInfoState {
  const factory TransactionInfoError({required final String message}) =
      _$TransactionInfoErrorImpl;

  String get message;

  /// Create a copy of TransactionInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionInfoErrorImplCopyWith<_$TransactionInfoErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
