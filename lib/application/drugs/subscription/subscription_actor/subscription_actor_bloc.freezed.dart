// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionActorEventTearOff {
  const _$SubscriptionActorEventTearOff();

  _Subscribed subscribed(
      String drugId, int expiresInDays, String accessToken, String userId) {
    return _Subscribed(
      drugId,
      expiresInDays,
      accessToken,
      userId,
    );
  }

  _Unsubscribed unsubscribed(
      String subscriptionId, String accessToken, String userId) {
    return _Unsubscribed(
      subscriptionId,
      accessToken,
      userId,
    );
  }
}

/// @nodoc
const $SubscriptionActorEvent = _$SubscriptionActorEventTearOff();

/// @nodoc
mixin _$SubscriptionActorEvent {
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String drugId, int expiresInDays, String accessToken, String userId)
        subscribed,
    required TResult Function(
            String subscriptionId, String accessToken, String userId)
        unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, int expiresInDays, String accessToken,
            String userId)?
        subscribed,
    TResult Function(String subscriptionId, String accessToken, String userId)?
        unsubscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionActorEventCopyWith<SubscriptionActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionActorEventCopyWith<$Res> {
  factory $SubscriptionActorEventCopyWith(SubscriptionActorEvent value,
          $Res Function(SubscriptionActorEvent) then) =
      _$SubscriptionActorEventCopyWithImpl<$Res>;
  $Res call({String accessToken, String userId});
}

/// @nodoc
class _$SubscriptionActorEventCopyWithImpl<$Res>
    implements $SubscriptionActorEventCopyWith<$Res> {
  _$SubscriptionActorEventCopyWithImpl(this._value, this._then);

  final SubscriptionActorEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionActorEvent) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscribedCopyWith<$Res>
    implements $SubscriptionActorEventCopyWith<$Res> {
  factory _$SubscribedCopyWith(
          _Subscribed value, $Res Function(_Subscribed) then) =
      __$SubscribedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String drugId, int expiresInDays, String accessToken, String userId});
}

/// @nodoc
class __$SubscribedCopyWithImpl<$Res>
    extends _$SubscriptionActorEventCopyWithImpl<$Res>
    implements _$SubscribedCopyWith<$Res> {
  __$SubscribedCopyWithImpl(
      _Subscribed _value, $Res Function(_Subscribed) _then)
      : super(_value, (v) => _then(v as _Subscribed));

  @override
  _Subscribed get _value => super._value as _Subscribed;

  @override
  $Res call({
    Object? drugId = freezed,
    Object? expiresInDays = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Subscribed(
      drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInDays == freezed
          ? _value.expiresInDays
          : expiresInDays // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Subscribed implements _Subscribed {
  const _$_Subscribed(
      this.drugId, this.expiresInDays, this.accessToken, this.userId);

  @override
  final String drugId;
  @override
  final int expiresInDays;
  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionActorEvent.subscribed(drugId: $drugId, expiresInDays: $expiresInDays, accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscribed &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)) &&
            (identical(other.expiresInDays, expiresInDays) ||
                const DeepCollectionEquality()
                    .equals(other.expiresInDays, expiresInDays)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(drugId) ^
      const DeepCollectionEquality().hash(expiresInDays) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$SubscribedCopyWith<_Subscribed> get copyWith =>
      __$SubscribedCopyWithImpl<_Subscribed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String drugId, int expiresInDays, String accessToken, String userId)
        subscribed,
    required TResult Function(
            String subscriptionId, String accessToken, String userId)
        unsubscribed,
  }) {
    return subscribed(drugId, expiresInDays, accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, int expiresInDays, String accessToken,
            String userId)?
        subscribed,
    TResult Function(String subscriptionId, String accessToken, String userId)?
        unsubscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(drugId, expiresInDays, accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class _Subscribed implements SubscriptionActorEvent {
  const factory _Subscribed(
          String drugId, int expiresInDays, String accessToken, String userId) =
      _$_Subscribed;

  String get drugId => throw _privateConstructorUsedError;
  int get expiresInDays => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscribedCopyWith<_Subscribed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnsubscribedCopyWith<$Res>
    implements $SubscriptionActorEventCopyWith<$Res> {
  factory _$UnsubscribedCopyWith(
          _Unsubscribed value, $Res Function(_Unsubscribed) then) =
      __$UnsubscribedCopyWithImpl<$Res>;
  @override
  $Res call({String subscriptionId, String accessToken, String userId});
}

/// @nodoc
class __$UnsubscribedCopyWithImpl<$Res>
    extends _$SubscriptionActorEventCopyWithImpl<$Res>
    implements _$UnsubscribedCopyWith<$Res> {
  __$UnsubscribedCopyWithImpl(
      _Unsubscribed _value, $Res Function(_Unsubscribed) _then)
      : super(_value, (v) => _then(v as _Unsubscribed));

  @override
  _Unsubscribed get _value => super._value as _Unsubscribed;

  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Unsubscribed(
      subscriptionId == freezed
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unsubscribed implements _Unsubscribed {
  const _$_Unsubscribed(this.subscriptionId, this.accessToken, this.userId);

  @override
  final String subscriptionId;
  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionActorEvent.unsubscribed(subscriptionId: $subscriptionId, accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unsubscribed &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionId, subscriptionId)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UnsubscribedCopyWith<_Unsubscribed> get copyWith =>
      __$UnsubscribedCopyWithImpl<_Unsubscribed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String drugId, int expiresInDays, String accessToken, String userId)
        subscribed,
    required TResult Function(
            String subscriptionId, String accessToken, String userId)
        unsubscribed,
  }) {
    return unsubscribed(subscriptionId, accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, int expiresInDays, String accessToken,
            String userId)?
        subscribed,
    TResult Function(String subscriptionId, String accessToken, String userId)?
        unsubscribed,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(subscriptionId, accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class _Unsubscribed implements SubscriptionActorEvent {
  const factory _Unsubscribed(
          String subscriptionId, String accessToken, String userId) =
      _$_Unsubscribed;

  String get subscriptionId => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnsubscribedCopyWith<_Unsubscribed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionActorStateTearOff {
  const _$SubscriptionActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _ActionFailure actionFailure(ReviewFailure reviewFailure) {
    return _ActionFailure(
      reviewFailure,
    );
  }

  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }
}

/// @nodoc
const $SubscriptionActorState = _$SubscriptionActorStateTearOff();

/// @nodoc
mixin _$SubscriptionActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionActorStateCopyWith<$Res> {
  factory $SubscriptionActorStateCopyWith(SubscriptionActorState value,
          $Res Function(SubscriptionActorState) then) =
      _$SubscriptionActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionActorStateCopyWithImpl<$Res>
    implements $SubscriptionActorStateCopyWith<$Res> {
  _$SubscriptionActorStateCopyWithImpl(this._value, this._then);

  final SubscriptionActorState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SubscriptionActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubscriptionActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$SubscriptionActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'SubscriptionActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements SubscriptionActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure reviewFailure});

  $ReviewFailureCopyWith<$Res> get reviewFailure;
}

/// @nodoc
class __$ActionFailureCopyWithImpl<$Res>
    extends _$SubscriptionActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object? reviewFailure = freezed,
  }) {
    return _then(_ActionFailure(
      reviewFailure == freezed
          ? _value.reviewFailure
          : reviewFailure // ignore: cast_nullable_to_non_nullable
              as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get reviewFailure {
    return $ReviewFailureCopyWith<$Res>(_value.reviewFailure, (value) {
      return _then(_value.copyWith(reviewFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.reviewFailure);

  @override
  final ReviewFailure reviewFailure;

  @override
  String toString() {
    return 'SubscriptionActorState.actionFailure(reviewFailure: $reviewFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFailure &&
            (identical(other.reviewFailure, reviewFailure) ||
                const DeepCollectionEquality()
                    .equals(other.reviewFailure, reviewFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewFailure);

  @JsonKey(ignore: true)
  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(reviewFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements SubscriptionActorState {
  const factory _ActionFailure(ReviewFailure reviewFailure) = _$_ActionFailure;

  ReviewFailure get reviewFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$SubscriptionActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'SubscriptionActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements SubscriptionActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
