// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserAccountEventTearOff {
  const _$UserAccountEventTearOff();

  RemoveUserAccount removeUserAccount() {
    return const RemoveUserAccount();
  }

  SetUserAccount setUserAccount(User user) {
    return SetUserAccount(
      user,
    );
  }
}

/// @nodoc
const $UserAccountEvent = _$UserAccountEventTearOff();

/// @nodoc
mixin _$UserAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() removeUserAccount,
    required TResult Function(User user) setUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? removeUserAccount,
    TResult Function(User user)? setUserAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveUserAccount value) removeUserAccount,
    required TResult Function(SetUserAccount value) setUserAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveUserAccount value)? removeUserAccount,
    TResult Function(SetUserAccount value)? setUserAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountEventCopyWith<$Res> {
  factory $UserAccountEventCopyWith(
          UserAccountEvent value, $Res Function(UserAccountEvent) then) =
      _$UserAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAccountEventCopyWithImpl<$Res>
    implements $UserAccountEventCopyWith<$Res> {
  _$UserAccountEventCopyWithImpl(this._value, this._then);

  final UserAccountEvent _value;
  // ignore: unused_field
  final $Res Function(UserAccountEvent) _then;
}

/// @nodoc
abstract class $RemoveUserAccountCopyWith<$Res> {
  factory $RemoveUserAccountCopyWith(
          RemoveUserAccount value, $Res Function(RemoveUserAccount) then) =
      _$RemoveUserAccountCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveUserAccountCopyWithImpl<$Res>
    extends _$UserAccountEventCopyWithImpl<$Res>
    implements $RemoveUserAccountCopyWith<$Res> {
  _$RemoveUserAccountCopyWithImpl(
      RemoveUserAccount _value, $Res Function(RemoveUserAccount) _then)
      : super(_value, (v) => _then(v as RemoveUserAccount));

  @override
  RemoveUserAccount get _value => super._value as RemoveUserAccount;
}

/// @nodoc

class _$RemoveUserAccount implements RemoveUserAccount {
  const _$RemoveUserAccount();

  @override
  String toString() {
    return 'UserAccountEvent.removeUserAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RemoveUserAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() removeUserAccount,
    required TResult Function(User user) setUserAccount,
  }) {
    return removeUserAccount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? removeUserAccount,
    TResult Function(User user)? setUserAccount,
    required TResult orElse(),
  }) {
    if (removeUserAccount != null) {
      return removeUserAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveUserAccount value) removeUserAccount,
    required TResult Function(SetUserAccount value) setUserAccount,
  }) {
    return removeUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveUserAccount value)? removeUserAccount,
    TResult Function(SetUserAccount value)? setUserAccount,
    required TResult orElse(),
  }) {
    if (removeUserAccount != null) {
      return removeUserAccount(this);
    }
    return orElse();
  }
}

abstract class RemoveUserAccount implements UserAccountEvent {
  const factory RemoveUserAccount() = _$RemoveUserAccount;
}

/// @nodoc
abstract class $SetUserAccountCopyWith<$Res> {
  factory $SetUserAccountCopyWith(
          SetUserAccount value, $Res Function(SetUserAccount) then) =
      _$SetUserAccountCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SetUserAccountCopyWithImpl<$Res>
    extends _$UserAccountEventCopyWithImpl<$Res>
    implements $SetUserAccountCopyWith<$Res> {
  _$SetUserAccountCopyWithImpl(
      SetUserAccount _value, $Res Function(SetUserAccount) _then)
      : super(_value, (v) => _then(v as SetUserAccount));

  @override
  SetUserAccount get _value => super._value as SetUserAccount;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SetUserAccount(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SetUserAccount implements SetUserAccount {
  const _$SetUserAccount(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserAccountEvent.setUserAccount(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetUserAccount &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $SetUserAccountCopyWith<SetUserAccount> get copyWith =>
      _$SetUserAccountCopyWithImpl<SetUserAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() removeUserAccount,
    required TResult Function(User user) setUserAccount,
  }) {
    return setUserAccount(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? removeUserAccount,
    TResult Function(User user)? setUserAccount,
    required TResult orElse(),
  }) {
    if (setUserAccount != null) {
      return setUserAccount(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveUserAccount value) removeUserAccount,
    required TResult Function(SetUserAccount value) setUserAccount,
  }) {
    return setUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveUserAccount value)? removeUserAccount,
    TResult Function(SetUserAccount value)? setUserAccount,
    required TResult orElse(),
  }) {
    if (setUserAccount != null) {
      return setUserAccount(this);
    }
    return orElse();
  }
}

abstract class SetUserAccount implements UserAccountEvent {
  const factory SetUserAccount(User user) = _$SetUserAccount;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetUserAccountCopyWith<SetUserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserAccountStateTearOff {
  const _$UserAccountStateTearOff();

  _UserAccountState call(
      {required String name, required String id, required String accessToken}) {
    return _UserAccountState(
      name: name,
      id: id,
      accessToken: accessToken,
    );
  }
}

/// @nodoc
const $UserAccountState = _$UserAccountStateTearOff();

/// @nodoc
mixin _$UserAccountState {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAccountStateCopyWith<UserAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountStateCopyWith<$Res> {
  factory $UserAccountStateCopyWith(
          UserAccountState value, $Res Function(UserAccountState) then) =
      _$UserAccountStateCopyWithImpl<$Res>;
  $Res call({String name, String id, String accessToken});
}

/// @nodoc
class _$UserAccountStateCopyWithImpl<$Res>
    implements $UserAccountStateCopyWith<$Res> {
  _$UserAccountStateCopyWithImpl(this._value, this._then);

  final UserAccountState _value;
  // ignore: unused_field
  final $Res Function(UserAccountState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAccountStateCopyWith<$Res>
    implements $UserAccountStateCopyWith<$Res> {
  factory _$UserAccountStateCopyWith(
          _UserAccountState value, $Res Function(_UserAccountState) then) =
      __$UserAccountStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id, String accessToken});
}

/// @nodoc
class __$UserAccountStateCopyWithImpl<$Res>
    extends _$UserAccountStateCopyWithImpl<$Res>
    implements _$UserAccountStateCopyWith<$Res> {
  __$UserAccountStateCopyWithImpl(
      _UserAccountState _value, $Res Function(_UserAccountState) _then)
      : super(_value, (v) => _then(v as _UserAccountState));

  @override
  _UserAccountState get _value => super._value as _UserAccountState;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_UserAccountState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserAccountState implements _UserAccountState {
  const _$_UserAccountState(
      {required this.name, required this.id, required this.accessToken});

  @override
  final String name;
  @override
  final String id;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'UserAccountState(name: $name, id: $id, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAccountState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$UserAccountStateCopyWith<_UserAccountState> get copyWith =>
      __$UserAccountStateCopyWithImpl<_UserAccountState>(this, _$identity);
}

abstract class _UserAccountState implements UserAccountState {
  const factory _UserAccountState(
      {required String name,
      required String id,
      required String accessToken}) = _$_UserAccountState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAccountStateCopyWith<_UserAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
