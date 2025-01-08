// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAccountData data) create,
    required TResult Function(CreateAccountData data) edit,
    required TResult Function(CreateAccountData data) update,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountData data)? create,
    TResult? Function(CreateAccountData data)? edit,
    TResult? Function(CreateAccountData data)? update,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAccountData data)? create,
    TResult Function(CreateAccountData data)? edit,
    TResult Function(CreateAccountData data)? update,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNewAccount value) create,
    required TResult Function(EditNewAccount value) edit,
    required TResult Function(UpdateNewAccount value) update,
    required TResult Function(InitNewAccount value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewAccount value)? create,
    TResult? Function(EditNewAccount value)? edit,
    TResult? Function(UpdateNewAccount value)? update,
    TResult? Function(InitNewAccount value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewAccount value)? create,
    TResult Function(EditNewAccount value)? edit,
    TResult Function(UpdateNewAccount value)? update,
    TResult Function(InitNewAccount value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateNewAccountImplCopyWith<$Res> {
  factory _$$CreateNewAccountImplCopyWith(_$CreateNewAccountImpl value,
          $Res Function(_$CreateNewAccountImpl) then) =
      __$$CreateNewAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountData data});

  $CreateAccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CreateNewAccountImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$CreateNewAccountImpl>
    implements _$$CreateNewAccountImplCopyWith<$Res> {
  __$$CreateNewAccountImplCopyWithImpl(_$CreateNewAccountImpl _value,
      $Res Function(_$CreateNewAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CreateNewAccountImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAccountData,
    ));
  }

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateAccountDataCopyWith<$Res> get data {
    return $CreateAccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$CreateNewAccountImpl
    with DiagnosticableTreeMixin
    implements CreateNewAccount {
  const _$CreateNewAccountImpl({required this.data});

  @override
  final CreateAccountData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.create(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountEvent.create'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewAccountImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewAccountImplCopyWith<_$CreateNewAccountImpl> get copyWith =>
      __$$CreateNewAccountImplCopyWithImpl<_$CreateNewAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAccountData data) create,
    required TResult Function(CreateAccountData data) edit,
    required TResult Function(CreateAccountData data) update,
    required TResult Function() init,
  }) {
    return create(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountData data)? create,
    TResult? Function(CreateAccountData data)? edit,
    TResult? Function(CreateAccountData data)? update,
    TResult? Function()? init,
  }) {
    return create?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAccountData data)? create,
    TResult Function(CreateAccountData data)? edit,
    TResult Function(CreateAccountData data)? update,
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
    required TResult Function(CreateNewAccount value) create,
    required TResult Function(EditNewAccount value) edit,
    required TResult Function(UpdateNewAccount value) update,
    required TResult Function(InitNewAccount value) init,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewAccount value)? create,
    TResult? Function(EditNewAccount value)? edit,
    TResult? Function(UpdateNewAccount value)? update,
    TResult? Function(InitNewAccount value)? init,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewAccount value)? create,
    TResult Function(EditNewAccount value)? edit,
    TResult Function(UpdateNewAccount value)? update,
    TResult Function(InitNewAccount value)? init,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateNewAccount implements CreateAccountEvent {
  const factory CreateNewAccount({required final CreateAccountData data}) =
      _$CreateNewAccountImpl;

  CreateAccountData get data;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewAccountImplCopyWith<_$CreateNewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditNewAccountImplCopyWith<$Res> {
  factory _$$EditNewAccountImplCopyWith(_$EditNewAccountImpl value,
          $Res Function(_$EditNewAccountImpl) then) =
      __$$EditNewAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountData data});

  $CreateAccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditNewAccountImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$EditNewAccountImpl>
    implements _$$EditNewAccountImplCopyWith<$Res> {
  __$$EditNewAccountImplCopyWithImpl(
      _$EditNewAccountImpl _value, $Res Function(_$EditNewAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditNewAccountImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAccountData,
    ));
  }

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateAccountDataCopyWith<$Res> get data {
    return $CreateAccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$EditNewAccountImpl
    with DiagnosticableTreeMixin
    implements EditNewAccount {
  const _$EditNewAccountImpl({required this.data});

  @override
  final CreateAccountData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.edit(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountEvent.edit'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditNewAccountImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditNewAccountImplCopyWith<_$EditNewAccountImpl> get copyWith =>
      __$$EditNewAccountImplCopyWithImpl<_$EditNewAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAccountData data) create,
    required TResult Function(CreateAccountData data) edit,
    required TResult Function(CreateAccountData data) update,
    required TResult Function() init,
  }) {
    return edit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountData data)? create,
    TResult? Function(CreateAccountData data)? edit,
    TResult? Function(CreateAccountData data)? update,
    TResult? Function()? init,
  }) {
    return edit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAccountData data)? create,
    TResult Function(CreateAccountData data)? edit,
    TResult Function(CreateAccountData data)? update,
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
    required TResult Function(CreateNewAccount value) create,
    required TResult Function(EditNewAccount value) edit,
    required TResult Function(UpdateNewAccount value) update,
    required TResult Function(InitNewAccount value) init,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewAccount value)? create,
    TResult? Function(EditNewAccount value)? edit,
    TResult? Function(UpdateNewAccount value)? update,
    TResult? Function(InitNewAccount value)? init,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewAccount value)? create,
    TResult Function(EditNewAccount value)? edit,
    TResult Function(UpdateNewAccount value)? update,
    TResult Function(InitNewAccount value)? init,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditNewAccount implements CreateAccountEvent {
  const factory EditNewAccount({required final CreateAccountData data}) =
      _$EditNewAccountImpl;

  CreateAccountData get data;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditNewAccountImplCopyWith<_$EditNewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNewAccountImplCopyWith<$Res> {
  factory _$$UpdateNewAccountImplCopyWith(_$UpdateNewAccountImpl value,
          $Res Function(_$UpdateNewAccountImpl) then) =
      __$$UpdateNewAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountData data});

  $CreateAccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateNewAccountImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$UpdateNewAccountImpl>
    implements _$$UpdateNewAccountImplCopyWith<$Res> {
  __$$UpdateNewAccountImplCopyWithImpl(_$UpdateNewAccountImpl _value,
      $Res Function(_$UpdateNewAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdateNewAccountImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAccountData,
    ));
  }

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateAccountDataCopyWith<$Res> get data {
    return $CreateAccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UpdateNewAccountImpl
    with DiagnosticableTreeMixin
    implements UpdateNewAccount {
  const _$UpdateNewAccountImpl({required this.data});

  @override
  final CreateAccountData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.update(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountEvent.update'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNewAccountImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNewAccountImplCopyWith<_$UpdateNewAccountImpl> get copyWith =>
      __$$UpdateNewAccountImplCopyWithImpl<_$UpdateNewAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAccountData data) create,
    required TResult Function(CreateAccountData data) edit,
    required TResult Function(CreateAccountData data) update,
    required TResult Function() init,
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountData data)? create,
    TResult? Function(CreateAccountData data)? edit,
    TResult? Function(CreateAccountData data)? update,
    TResult? Function()? init,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAccountData data)? create,
    TResult Function(CreateAccountData data)? edit,
    TResult Function(CreateAccountData data)? update,
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
    required TResult Function(CreateNewAccount value) create,
    required TResult Function(EditNewAccount value) edit,
    required TResult Function(UpdateNewAccount value) update,
    required TResult Function(InitNewAccount value) init,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewAccount value)? create,
    TResult? Function(EditNewAccount value)? edit,
    TResult? Function(UpdateNewAccount value)? update,
    TResult? Function(InitNewAccount value)? init,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewAccount value)? create,
    TResult Function(EditNewAccount value)? edit,
    TResult Function(UpdateNewAccount value)? update,
    TResult Function(InitNewAccount value)? init,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateNewAccount implements CreateAccountEvent {
  const factory UpdateNewAccount({required final CreateAccountData data}) =
      _$UpdateNewAccountImpl;

  CreateAccountData get data;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNewAccountImplCopyWith<_$UpdateNewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitNewAccountImplCopyWith<$Res> {
  factory _$$InitNewAccountImplCopyWith(_$InitNewAccountImpl value,
          $Res Function(_$InitNewAccountImpl) then) =
      __$$InitNewAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitNewAccountImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$InitNewAccountImpl>
    implements _$$InitNewAccountImplCopyWith<$Res> {
  __$$InitNewAccountImplCopyWithImpl(
      _$InitNewAccountImpl _value, $Res Function(_$InitNewAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitNewAccountImpl
    with DiagnosticableTreeMixin
    implements InitNewAccount {
  const _$InitNewAccountImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateAccountEvent.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitNewAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAccountData data) create,
    required TResult Function(CreateAccountData data) edit,
    required TResult Function(CreateAccountData data) update,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAccountData data)? create,
    TResult? Function(CreateAccountData data)? edit,
    TResult? Function(CreateAccountData data)? update,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAccountData data)? create,
    TResult Function(CreateAccountData data)? edit,
    TResult Function(CreateAccountData data)? update,
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
    required TResult Function(CreateNewAccount value) create,
    required TResult Function(EditNewAccount value) edit,
    required TResult Function(UpdateNewAccount value) update,
    required TResult Function(InitNewAccount value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateNewAccount value)? create,
    TResult? Function(EditNewAccount value)? edit,
    TResult? Function(UpdateNewAccount value)? update,
    TResult? Function(InitNewAccount value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNewAccount value)? create,
    TResult Function(EditNewAccount value)? edit,
    TResult Function(UpdateNewAccount value)? update,
    TResult Function(InitNewAccount value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitNewAccount implements CreateAccountEvent {
  const factory InitNewAccount() = _$InitNewAccountImpl;
}

/// @nodoc
mixin _$CreateAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateAccountData data) show,
    required TResult Function(CreateAccountData data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateAccountData data)? show,
    TResult? Function(CreateAccountData data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateAccountData data)? show,
    TResult Function(CreateAccountData data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialCreateAccountState value) initial,
    required TResult Function(ShowCreateAccountState value) show,
    required TResult Function(SuccessCreateAccountState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateAccountState value)? initial,
    TResult? Function(ShowCreateAccountState value)? show,
    TResult? Function(SuccessCreateAccountState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateAccountState value)? initial,
    TResult Function(ShowCreateAccountState value)? show,
    TResult Function(SuccessCreateAccountState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCreateAccountStateImplCopyWith<$Res> {
  factory _$$InitialCreateAccountStateImplCopyWith(
          _$InitialCreateAccountStateImpl value,
          $Res Function(_$InitialCreateAccountStateImpl) then) =
      __$$InitialCreateAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCreateAccountStateImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$InitialCreateAccountStateImpl>
    implements _$$InitialCreateAccountStateImplCopyWith<$Res> {
  __$$InitialCreateAccountStateImplCopyWithImpl(
      _$InitialCreateAccountStateImpl _value,
      $Res Function(_$InitialCreateAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCreateAccountStateImpl
    with DiagnosticableTreeMixin
    implements InitialCreateAccountState {
  const _$InitialCreateAccountStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateAccountState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialCreateAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateAccountData data) show,
    required TResult Function(CreateAccountData data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateAccountData data)? show,
    TResult? Function(CreateAccountData data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateAccountData data)? show,
    TResult Function(CreateAccountData data)? success,
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
    required TResult Function(InitialCreateAccountState value) initial,
    required TResult Function(ShowCreateAccountState value) show,
    required TResult Function(SuccessCreateAccountState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateAccountState value)? initial,
    TResult? Function(ShowCreateAccountState value)? show,
    TResult? Function(SuccessCreateAccountState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateAccountState value)? initial,
    TResult Function(ShowCreateAccountState value)? show,
    TResult Function(SuccessCreateAccountState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCreateAccountState implements CreateAccountState {
  const factory InitialCreateAccountState() = _$InitialCreateAccountStateImpl;
}

/// @nodoc
abstract class _$$ShowCreateAccountStateImplCopyWith<$Res> {
  factory _$$ShowCreateAccountStateImplCopyWith(
          _$ShowCreateAccountStateImpl value,
          $Res Function(_$ShowCreateAccountStateImpl) then) =
      __$$ShowCreateAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountData data});

  $CreateAccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowCreateAccountStateImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$ShowCreateAccountStateImpl>
    implements _$$ShowCreateAccountStateImplCopyWith<$Res> {
  __$$ShowCreateAccountStateImplCopyWithImpl(
      _$ShowCreateAccountStateImpl _value,
      $Res Function(_$ShowCreateAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowCreateAccountStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAccountData,
    ));
  }

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateAccountDataCopyWith<$Res> get data {
    return $CreateAccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ShowCreateAccountStateImpl
    with DiagnosticableTreeMixin
    implements ShowCreateAccountState {
  const _$ShowCreateAccountStateImpl({required this.data});

  @override
  final CreateAccountData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountState.show(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountState.show'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCreateAccountStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCreateAccountStateImplCopyWith<_$ShowCreateAccountStateImpl>
      get copyWith => __$$ShowCreateAccountStateImplCopyWithImpl<
          _$ShowCreateAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateAccountData data) show,
    required TResult Function(CreateAccountData data) success,
  }) {
    return show(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateAccountData data)? show,
    TResult? Function(CreateAccountData data)? success,
  }) {
    return show?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateAccountData data)? show,
    TResult Function(CreateAccountData data)? success,
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
    required TResult Function(InitialCreateAccountState value) initial,
    required TResult Function(ShowCreateAccountState value) show,
    required TResult Function(SuccessCreateAccountState value) success,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateAccountState value)? initial,
    TResult? Function(ShowCreateAccountState value)? show,
    TResult? Function(SuccessCreateAccountState value)? success,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateAccountState value)? initial,
    TResult Function(ShowCreateAccountState value)? show,
    TResult Function(SuccessCreateAccountState value)? success,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowCreateAccountState implements CreateAccountState {
  const factory ShowCreateAccountState(
      {required final CreateAccountData data}) = _$ShowCreateAccountStateImpl;

  CreateAccountData get data;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCreateAccountStateImplCopyWith<_$ShowCreateAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateAccountStateImplCopyWith<$Res> {
  factory _$$SuccessCreateAccountStateImplCopyWith(
          _$SuccessCreateAccountStateImpl value,
          $Res Function(_$SuccessCreateAccountStateImpl) then) =
      __$$SuccessCreateAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountData data});

  $CreateAccountDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessCreateAccountStateImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res,
        _$SuccessCreateAccountStateImpl>
    implements _$$SuccessCreateAccountStateImplCopyWith<$Res> {
  __$$SuccessCreateAccountStateImplCopyWithImpl(
      _$SuccessCreateAccountStateImpl _value,
      $Res Function(_$SuccessCreateAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessCreateAccountStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAccountData,
    ));
  }

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateAccountDataCopyWith<$Res> get data {
    return $CreateAccountDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessCreateAccountStateImpl
    with DiagnosticableTreeMixin
    implements SuccessCreateAccountState {
  const _$SuccessCreateAccountStateImpl({required this.data});

  @override
  final CreateAccountData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountState.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountState.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateAccountStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateAccountStateImplCopyWith<_$SuccessCreateAccountStateImpl>
      get copyWith => __$$SuccessCreateAccountStateImplCopyWithImpl<
          _$SuccessCreateAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CreateAccountData data) show,
    required TResult Function(CreateAccountData data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CreateAccountData data)? show,
    TResult? Function(CreateAccountData data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CreateAccountData data)? show,
    TResult Function(CreateAccountData data)? success,
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
    required TResult Function(InitialCreateAccountState value) initial,
    required TResult Function(ShowCreateAccountState value) show,
    required TResult Function(SuccessCreateAccountState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialCreateAccountState value)? initial,
    TResult? Function(ShowCreateAccountState value)? show,
    TResult? Function(SuccessCreateAccountState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialCreateAccountState value)? initial,
    TResult Function(ShowCreateAccountState value)? show,
    TResult Function(SuccessCreateAccountState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessCreateAccountState implements CreateAccountState {
  const factory SuccessCreateAccountState(
          {required final CreateAccountData data}) =
      _$SuccessCreateAccountStateImpl;

  CreateAccountData get data;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateAccountStateImplCopyWith<_$SuccessCreateAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountData {
  Account? get account => throw _privateConstructorUsedError;
  int get selectedImageIndex => throw _privateConstructorUsedError;
  List<String> get imageAssets => throw _privateConstructorUsedError;

  /// Create a copy of CreateAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAccountDataCopyWith<CreateAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountDataCopyWith<$Res> {
  factory $CreateAccountDataCopyWith(
          CreateAccountData value, $Res Function(CreateAccountData) then) =
      _$CreateAccountDataCopyWithImpl<$Res, CreateAccountData>;
  @useResult
  $Res call(
      {Account? account, int selectedImageIndex, List<String> imageAssets});
}

/// @nodoc
class _$CreateAccountDataCopyWithImpl<$Res, $Val extends CreateAccountData>
    implements $CreateAccountDataCopyWith<$Res> {
  _$CreateAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
    Object? selectedImageIndex = null,
    Object? imageAssets = null,
  }) {
    return _then(_value.copyWith(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      selectedImageIndex: null == selectedImageIndex
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageAssets: null == imageAssets
          ? _value.imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountDataImplCopyWith<$Res>
    implements $CreateAccountDataCopyWith<$Res> {
  factory _$$CreateAccountDataImplCopyWith(_$CreateAccountDataImpl value,
          $Res Function(_$CreateAccountDataImpl) then) =
      __$$CreateAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account? account, int selectedImageIndex, List<String> imageAssets});
}

/// @nodoc
class __$$CreateAccountDataImplCopyWithImpl<$Res>
    extends _$CreateAccountDataCopyWithImpl<$Res, _$CreateAccountDataImpl>
    implements _$$CreateAccountDataImplCopyWith<$Res> {
  __$$CreateAccountDataImplCopyWithImpl(_$CreateAccountDataImpl _value,
      $Res Function(_$CreateAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = freezed,
    Object? selectedImageIndex = null,
    Object? imageAssets = null,
  }) {
    return _then(_$CreateAccountDataImpl(
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      selectedImageIndex: null == selectedImageIndex
          ? _value.selectedImageIndex
          : selectedImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imageAssets: null == imageAssets
          ? _value._imageAssets
          : imageAssets // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreateAccountDataImpl
    with DiagnosticableTreeMixin
    implements _CreateAccountData {
  const _$CreateAccountDataImpl(
      {this.account = null,
      this.selectedImageIndex = 0,
      final List<String> imageAssets = const []})
      : _imageAssets = imageAssets;

  @override
  @JsonKey()
  final Account? account;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAccountData(account: $account, selectedImageIndex: $selectedImageIndex, imageAssets: $imageAssets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAccountData'))
      ..add(DiagnosticsProperty('account', account))
      ..add(DiagnosticsProperty('selectedImageIndex', selectedImageIndex))
      ..add(DiagnosticsProperty('imageAssets', imageAssets));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountDataImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.selectedImageIndex, selectedImageIndex) ||
                other.selectedImageIndex == selectedImageIndex) &&
            const DeepCollectionEquality()
                .equals(other._imageAssets, _imageAssets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, selectedImageIndex,
      const DeepCollectionEquality().hash(_imageAssets));

  /// Create a copy of CreateAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountDataImplCopyWith<_$CreateAccountDataImpl> get copyWith =>
      __$$CreateAccountDataImplCopyWithImpl<_$CreateAccountDataImpl>(
          this, _$identity);
}

abstract class _CreateAccountData implements CreateAccountData {
  const factory _CreateAccountData(
      {final Account? account,
      final int selectedImageIndex,
      final List<String> imageAssets}) = _$CreateAccountDataImpl;

  @override
  Account? get account;
  @override
  int get selectedImageIndex;
  @override
  List<String> get imageAssets;

  /// Create a copy of CreateAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAccountDataImplCopyWith<_$CreateAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
