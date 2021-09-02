// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pharma_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PharmaFailureTearOff {
  const _$PharmaFailureTearOff();

  UnauthorizedAccess unauthorizedAccess() {
    return const UnauthorizedAccess();
  }

  ServerError serverError() {
    return const ServerError();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
const $PharmaFailure = _$PharmaFailureTearOff();

/// @nodoc
mixin _$PharmaFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedAccess,
    required TResult Function() serverError,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedAccess,
    TResult Function()? serverError,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAccess value) unauthorizedAccess,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAccess value)? unauthorizedAccess,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmaFailureCopyWith<$Res> {
  factory $PharmaFailureCopyWith(
          PharmaFailure value, $Res Function(PharmaFailure) then) =
      _$PharmaFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PharmaFailureCopyWithImpl<$Res>
    implements $PharmaFailureCopyWith<$Res> {
  _$PharmaFailureCopyWithImpl(this._value, this._then);

  final PharmaFailure _value;
  // ignore: unused_field
  final $Res Function(PharmaFailure) _then;
}

/// @nodoc
abstract class $UnauthorizedAccessCopyWith<$Res> {
  factory $UnauthorizedAccessCopyWith(
          UnauthorizedAccess value, $Res Function(UnauthorizedAccess) then) =
      _$UnauthorizedAccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedAccessCopyWithImpl<$Res>
    extends _$PharmaFailureCopyWithImpl<$Res>
    implements $UnauthorizedAccessCopyWith<$Res> {
  _$UnauthorizedAccessCopyWithImpl(
      UnauthorizedAccess _value, $Res Function(UnauthorizedAccess) _then)
      : super(_value, (v) => _then(v as UnauthorizedAccess));

  @override
  UnauthorizedAccess get _value => super._value as UnauthorizedAccess;
}

/// @nodoc

class _$UnauthorizedAccess implements UnauthorizedAccess {
  const _$UnauthorizedAccess();

  @override
  String toString() {
    return 'PharmaFailure.unauthorizedAccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthorizedAccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedAccess,
    required TResult Function() serverError,
    required TResult Function() unexpected,
  }) {
    return unauthorizedAccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedAccess,
    TResult Function()? serverError,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAccess value) unauthorizedAccess,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unauthorizedAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAccess value)? unauthorizedAccess,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedAccess implements PharmaFailure {
  const factory UnauthorizedAccess() = _$UnauthorizedAccess;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$PharmaFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'PharmaFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedAccess,
    required TResult Function() serverError,
    required TResult Function() unexpected,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedAccess,
    TResult Function()? serverError,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAccess value) unauthorizedAccess,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAccess value)? unauthorizedAccess,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements PharmaFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$PharmaFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'PharmaFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorizedAccess,
    required TResult Function() serverError,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorizedAccess,
    TResult Function()? serverError,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthorizedAccess value) unauthorizedAccess,
    required TResult Function(ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthorizedAccess value)? unauthorizedAccess,
    TResult Function(ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements PharmaFailure {
  const factory _Unexpected() = _$_Unexpected;
}
