// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionFetcherEventTearOff {
  const _$SubscriptionFetcherEventTearOff();

  _FetchSubscriptions fetchSubscriptions(String accessToken, String userId) {
    return _FetchSubscriptions(
      accessToken,
      userId,
    );
  }

  _SubscriptionsReceived subscriptionsReceived(
      Result<ReviewFailure, List<Subscription>> failureOrSubscriptions) {
    return _SubscriptionsReceived(
      failureOrSubscriptions,
    );
  }
}

/// @nodoc
const $SubscriptionFetcherEvent = _$SubscriptionFetcherEventTearOff();

/// @nodoc
mixin _$SubscriptionFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String userId)
        fetchSubscriptions,
    required TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)
        subscriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String userId)? fetchSubscriptions,
    TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)?
        subscriptionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubscriptions value) fetchSubscriptions,
    required TResult Function(_SubscriptionsReceived value)
        subscriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubscriptions value)? fetchSubscriptions,
    TResult Function(_SubscriptionsReceived value)? subscriptionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionFetcherEventCopyWith<$Res> {
  factory $SubscriptionFetcherEventCopyWith(SubscriptionFetcherEvent value,
          $Res Function(SubscriptionFetcherEvent) then) =
      _$SubscriptionFetcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionFetcherEventCopyWithImpl<$Res>
    implements $SubscriptionFetcherEventCopyWith<$Res> {
  _$SubscriptionFetcherEventCopyWithImpl(this._value, this._then);

  final SubscriptionFetcherEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionFetcherEvent) _then;
}

/// @nodoc
abstract class _$FetchSubscriptionsCopyWith<$Res> {
  factory _$FetchSubscriptionsCopyWith(
          _FetchSubscriptions value, $Res Function(_FetchSubscriptions) then) =
      __$FetchSubscriptionsCopyWithImpl<$Res>;
  $Res call({String accessToken, String userId});
}

/// @nodoc
class __$FetchSubscriptionsCopyWithImpl<$Res>
    extends _$SubscriptionFetcherEventCopyWithImpl<$Res>
    implements _$FetchSubscriptionsCopyWith<$Res> {
  __$FetchSubscriptionsCopyWithImpl(
      _FetchSubscriptions _value, $Res Function(_FetchSubscriptions) _then)
      : super(_value, (v) => _then(v as _FetchSubscriptions));

  @override
  _FetchSubscriptions get _value => super._value as _FetchSubscriptions;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FetchSubscriptions(
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

class _$_FetchSubscriptions implements _FetchSubscriptions {
  const _$_FetchSubscriptions(this.accessToken, this.userId);

  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionFetcherEvent.fetchSubscriptions(accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSubscriptions &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FetchSubscriptionsCopyWith<_FetchSubscriptions> get copyWith =>
      __$FetchSubscriptionsCopyWithImpl<_FetchSubscriptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String userId)
        fetchSubscriptions,
    required TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)
        subscriptionsReceived,
  }) {
    return fetchSubscriptions(accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String userId)? fetchSubscriptions,
    TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)?
        subscriptionsReceived,
    required TResult orElse(),
  }) {
    if (fetchSubscriptions != null) {
      return fetchSubscriptions(accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubscriptions value) fetchSubscriptions,
    required TResult Function(_SubscriptionsReceived value)
        subscriptionsReceived,
  }) {
    return fetchSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubscriptions value)? fetchSubscriptions,
    TResult Function(_SubscriptionsReceived value)? subscriptionsReceived,
    required TResult orElse(),
  }) {
    if (fetchSubscriptions != null) {
      return fetchSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _FetchSubscriptions implements SubscriptionFetcherEvent {
  const factory _FetchSubscriptions(String accessToken, String userId) =
      _$_FetchSubscriptions;

  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchSubscriptionsCopyWith<_FetchSubscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubscriptionsReceivedCopyWith<$Res> {
  factory _$SubscriptionsReceivedCopyWith(_SubscriptionsReceived value,
          $Res Function(_SubscriptionsReceived) then) =
      __$SubscriptionsReceivedCopyWithImpl<$Res>;
  $Res call({Result<ReviewFailure, List<Subscription>> failureOrSubscriptions});
}

/// @nodoc
class __$SubscriptionsReceivedCopyWithImpl<$Res>
    extends _$SubscriptionFetcherEventCopyWithImpl<$Res>
    implements _$SubscriptionsReceivedCopyWith<$Res> {
  __$SubscriptionsReceivedCopyWithImpl(_SubscriptionsReceived _value,
      $Res Function(_SubscriptionsReceived) _then)
      : super(_value, (v) => _then(v as _SubscriptionsReceived));

  @override
  _SubscriptionsReceived get _value => super._value as _SubscriptionsReceived;

  @override
  $Res call({
    Object? failureOrSubscriptions = freezed,
  }) {
    return _then(_SubscriptionsReceived(
      failureOrSubscriptions == freezed
          ? _value.failureOrSubscriptions
          : failureOrSubscriptions // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, List<Subscription>>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionsReceived implements _SubscriptionsReceived {
  const _$_SubscriptionsReceived(this.failureOrSubscriptions);

  @override
  final Result<ReviewFailure, List<Subscription>> failureOrSubscriptions;

  @override
  String toString() {
    return 'SubscriptionFetcherEvent.subscriptionsReceived(failureOrSubscriptions: $failureOrSubscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscriptionsReceived &&
            (identical(other.failureOrSubscriptions, failureOrSubscriptions) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSubscriptions, failureOrSubscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSubscriptions);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionsReceivedCopyWith<_SubscriptionsReceived> get copyWith =>
      __$SubscriptionsReceivedCopyWithImpl<_SubscriptionsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, String userId)
        fetchSubscriptions,
    required TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)
        subscriptionsReceived,
  }) {
    return subscriptionsReceived(failureOrSubscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, String userId)? fetchSubscriptions,
    TResult Function(
            Result<ReviewFailure, List<Subscription>> failureOrSubscriptions)?
        subscriptionsReceived,
    required TResult orElse(),
  }) {
    if (subscriptionsReceived != null) {
      return subscriptionsReceived(failureOrSubscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSubscriptions value) fetchSubscriptions,
    required TResult Function(_SubscriptionsReceived value)
        subscriptionsReceived,
  }) {
    return subscriptionsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSubscriptions value)? fetchSubscriptions,
    TResult Function(_SubscriptionsReceived value)? subscriptionsReceived,
    required TResult orElse(),
  }) {
    if (subscriptionsReceived != null) {
      return subscriptionsReceived(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionsReceived implements SubscriptionFetcherEvent {
  const factory _SubscriptionsReceived(
          Result<ReviewFailure, List<Subscription>> failureOrSubscriptions) =
      _$_SubscriptionsReceived;

  Result<ReviewFailure, List<Subscription>> get failureOrSubscriptions =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubscriptionsReceivedCopyWith<_SubscriptionsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionFetcherStateTearOff {
  const _$SubscriptionFetcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Subscription> subscriptions) {
    return _LoadSuccess(
      subscriptions,
    );
  }

  _LoadFailure loadFailure(ReviewFailure subscriptionFailure) {
    return _LoadFailure(
      subscriptionFailure,
    );
  }
}

/// @nodoc
const $SubscriptionFetcherState = _$SubscriptionFetcherStateTearOff();

/// @nodoc
mixin _$SubscriptionFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Subscription> subscriptions) loadSuccess,
    required TResult Function(ReviewFailure subscriptionFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Subscription> subscriptions)? loadSuccess,
    TResult Function(ReviewFailure subscriptionFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionFetcherStateCopyWith<$Res> {
  factory $SubscriptionFetcherStateCopyWith(SubscriptionFetcherState value,
          $Res Function(SubscriptionFetcherState) then) =
      _$SubscriptionFetcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionFetcherStateCopyWithImpl<$Res>
    implements $SubscriptionFetcherStateCopyWith<$Res> {
  _$SubscriptionFetcherStateCopyWithImpl(this._value, this._then);

  final SubscriptionFetcherState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionFetcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SubscriptionFetcherStateCopyWithImpl<$Res>
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
    return 'SubscriptionFetcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Subscription> subscriptions) loadSuccess,
    required TResult Function(ReviewFailure subscriptionFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Subscription> subscriptions)? loadSuccess,
    TResult Function(ReviewFailure subscriptionFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionFetcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$SubscriptionFetcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'SubscriptionFetcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Subscription> subscriptions) loadSuccess,
    required TResult Function(ReviewFailure subscriptionFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Subscription> subscriptions)? loadSuccess,
    TResult Function(ReviewFailure subscriptionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SubscriptionFetcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Subscription> subscriptions});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$SubscriptionFetcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_LoadSuccess(
      subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.subscriptions);

  @override
  final List<Subscription> subscriptions;

  @override
  String toString() {
    return 'SubscriptionFetcherState.loadSuccess(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subscriptions);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Subscription> subscriptions) loadSuccess,
    required TResult Function(ReviewFailure subscriptionFailure) loadFailure,
  }) {
    return loadSuccess(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Subscription> subscriptions)? loadSuccess,
    TResult Function(ReviewFailure subscriptionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SubscriptionFetcherState {
  const factory _LoadSuccess(List<Subscription> subscriptions) = _$_LoadSuccess;

  List<Subscription> get subscriptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure subscriptionFailure});

  $ReviewFailureCopyWith<$Res> get subscriptionFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$SubscriptionFetcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? subscriptionFailure = freezed,
  }) {
    return _then(_LoadFailure(
      subscriptionFailure == freezed
          ? _value.subscriptionFailure
          : subscriptionFailure // ignore: cast_nullable_to_non_nullable
              as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get subscriptionFailure {
    return $ReviewFailureCopyWith<$Res>(_value.subscriptionFailure, (value) {
      return _then(_value.copyWith(subscriptionFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.subscriptionFailure);

  @override
  final ReviewFailure subscriptionFailure;

  @override
  String toString() {
    return 'SubscriptionFetcherState.loadFailure(subscriptionFailure: $subscriptionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.subscriptionFailure, subscriptionFailure) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionFailure, subscriptionFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscriptionFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Subscription> subscriptions) loadSuccess,
    required TResult Function(ReviewFailure subscriptionFailure) loadFailure,
  }) {
    return loadFailure(subscriptionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Subscription> subscriptions)? loadSuccess,
    TResult Function(ReviewFailure subscriptionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(subscriptionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SubscriptionFetcherState {
  const factory _LoadFailure(ReviewFailure subscriptionFailure) =
      _$_LoadFailure;

  ReviewFailure get subscriptionFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
