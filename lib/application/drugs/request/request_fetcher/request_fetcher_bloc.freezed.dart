// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestFetcherEventTearOff {
  const _$RequestFetcherEventTearOff();

  _FetchRequests fetchRequests(
      String accessToken, int pageNumber, String userId, String filterBy) {
    return _FetchRequests(
      accessToken,
      pageNumber,
      userId,
      filterBy,
    );
  }

  _FetchMyRequests fetchMyRequests(String accessToken, String userId) {
    return _FetchMyRequests(
      accessToken,
      userId,
    );
  }

  _RequestsReceived requestsReceived(
      Result<ReviewFailure, List<Request>> failureOrRequests) {
    return _RequestsReceived(
      failureOrRequests,
    );
  }
}

/// @nodoc
const $RequestFetcherEvent = _$RequestFetcherEventTearOff();

/// @nodoc
mixin _$RequestFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)
        fetchRequests,
    required TResult Function(String accessToken, String userId)
        fetchMyRequests,
    required TResult Function(
            Result<ReviewFailure, List<Request>> failureOrRequests)
        requestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)?
        fetchRequests,
    TResult Function(String accessToken, String userId)? fetchMyRequests,
    TResult Function(Result<ReviewFailure, List<Request>> failureOrRequests)?
        requestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequests value) fetchRequests,
    required TResult Function(_FetchMyRequests value) fetchMyRequests,
    required TResult Function(_RequestsReceived value) requestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequests value)? fetchRequests,
    TResult Function(_FetchMyRequests value)? fetchMyRequests,
    TResult Function(_RequestsReceived value)? requestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFetcherEventCopyWith<$Res> {
  factory $RequestFetcherEventCopyWith(
          RequestFetcherEvent value, $Res Function(RequestFetcherEvent) then) =
      _$RequestFetcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFetcherEventCopyWithImpl<$Res>
    implements $RequestFetcherEventCopyWith<$Res> {
  _$RequestFetcherEventCopyWithImpl(this._value, this._then);

  final RequestFetcherEvent _value;
  // ignore: unused_field
  final $Res Function(RequestFetcherEvent) _then;
}

/// @nodoc
abstract class _$FetchRequestsCopyWith<$Res> {
  factory _$FetchRequestsCopyWith(
          _FetchRequests value, $Res Function(_FetchRequests) then) =
      __$FetchRequestsCopyWithImpl<$Res>;
  $Res call(
      {String accessToken, int pageNumber, String userId, String filterBy});
}

/// @nodoc
class __$FetchRequestsCopyWithImpl<$Res>
    extends _$RequestFetcherEventCopyWithImpl<$Res>
    implements _$FetchRequestsCopyWith<$Res> {
  __$FetchRequestsCopyWithImpl(
      _FetchRequests _value, $Res Function(_FetchRequests) _then)
      : super(_value, (v) => _then(v as _FetchRequests));

  @override
  _FetchRequests get _value => super._value as _FetchRequests;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? pageNumber = freezed,
    Object? userId = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_FetchRequests(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      filterBy == freezed
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchRequests implements _FetchRequests {
  const _$_FetchRequests(
      this.accessToken, this.pageNumber, this.userId, this.filterBy);

  @override
  final String accessToken;
  @override
  final int pageNumber;
  @override
  final String userId;
  @override
  final String filterBy;

  @override
  String toString() {
    return 'RequestFetcherEvent.fetchRequests(accessToken: $accessToken, pageNumber: $pageNumber, userId: $userId, filterBy: $filterBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchRequests &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.filterBy, filterBy) ||
                const DeepCollectionEquality()
                    .equals(other.filterBy, filterBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(filterBy);

  @JsonKey(ignore: true)
  @override
  _$FetchRequestsCopyWith<_FetchRequests> get copyWith =>
      __$FetchRequestsCopyWithImpl<_FetchRequests>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)
        fetchRequests,
    required TResult Function(String accessToken, String userId)
        fetchMyRequests,
    required TResult Function(
            Result<ReviewFailure, List<Request>> failureOrRequests)
        requestsReceived,
  }) {
    return fetchRequests(accessToken, pageNumber, userId, filterBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)?
        fetchRequests,
    TResult Function(String accessToken, String userId)? fetchMyRequests,
    TResult Function(Result<ReviewFailure, List<Request>> failureOrRequests)?
        requestsReceived,
    required TResult orElse(),
  }) {
    if (fetchRequests != null) {
      return fetchRequests(accessToken, pageNumber, userId, filterBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequests value) fetchRequests,
    required TResult Function(_FetchMyRequests value) fetchMyRequests,
    required TResult Function(_RequestsReceived value) requestsReceived,
  }) {
    return fetchRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequests value)? fetchRequests,
    TResult Function(_FetchMyRequests value)? fetchMyRequests,
    TResult Function(_RequestsReceived value)? requestsReceived,
    required TResult orElse(),
  }) {
    if (fetchRequests != null) {
      return fetchRequests(this);
    }
    return orElse();
  }
}

abstract class _FetchRequests implements RequestFetcherEvent {
  const factory _FetchRequests(
          String accessToken, int pageNumber, String userId, String filterBy) =
      _$_FetchRequests;

  String get accessToken => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get filterBy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchRequestsCopyWith<_FetchRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchMyRequestsCopyWith<$Res> {
  factory _$FetchMyRequestsCopyWith(
          _FetchMyRequests value, $Res Function(_FetchMyRequests) then) =
      __$FetchMyRequestsCopyWithImpl<$Res>;
  $Res call({String accessToken, String userId});
}

/// @nodoc
class __$FetchMyRequestsCopyWithImpl<$Res>
    extends _$RequestFetcherEventCopyWithImpl<$Res>
    implements _$FetchMyRequestsCopyWith<$Res> {
  __$FetchMyRequestsCopyWithImpl(
      _FetchMyRequests _value, $Res Function(_FetchMyRequests) _then)
      : super(_value, (v) => _then(v as _FetchMyRequests));

  @override
  _FetchMyRequests get _value => super._value as _FetchMyRequests;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FetchMyRequests(
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

class _$_FetchMyRequests implements _FetchMyRequests {
  const _$_FetchMyRequests(this.accessToken, this.userId);

  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'RequestFetcherEvent.fetchMyRequests(accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchMyRequests &&
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
  _$FetchMyRequestsCopyWith<_FetchMyRequests> get copyWith =>
      __$FetchMyRequestsCopyWithImpl<_FetchMyRequests>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)
        fetchRequests,
    required TResult Function(String accessToken, String userId)
        fetchMyRequests,
    required TResult Function(
            Result<ReviewFailure, List<Request>> failureOrRequests)
        requestsReceived,
  }) {
    return fetchMyRequests(accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)?
        fetchRequests,
    TResult Function(String accessToken, String userId)? fetchMyRequests,
    TResult Function(Result<ReviewFailure, List<Request>> failureOrRequests)?
        requestsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyRequests != null) {
      return fetchMyRequests(accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequests value) fetchRequests,
    required TResult Function(_FetchMyRequests value) fetchMyRequests,
    required TResult Function(_RequestsReceived value) requestsReceived,
  }) {
    return fetchMyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequests value)? fetchRequests,
    TResult Function(_FetchMyRequests value)? fetchMyRequests,
    TResult Function(_RequestsReceived value)? requestsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyRequests != null) {
      return fetchMyRequests(this);
    }
    return orElse();
  }
}

abstract class _FetchMyRequests implements RequestFetcherEvent {
  const factory _FetchMyRequests(String accessToken, String userId) =
      _$_FetchMyRequests;

  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchMyRequestsCopyWith<_FetchMyRequests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestsReceivedCopyWith<$Res> {
  factory _$RequestsReceivedCopyWith(
          _RequestsReceived value, $Res Function(_RequestsReceived) then) =
      __$RequestsReceivedCopyWithImpl<$Res>;
  $Res call({Result<ReviewFailure, List<Request>> failureOrRequests});
}

/// @nodoc
class __$RequestsReceivedCopyWithImpl<$Res>
    extends _$RequestFetcherEventCopyWithImpl<$Res>
    implements _$RequestsReceivedCopyWith<$Res> {
  __$RequestsReceivedCopyWithImpl(
      _RequestsReceived _value, $Res Function(_RequestsReceived) _then)
      : super(_value, (v) => _then(v as _RequestsReceived));

  @override
  _RequestsReceived get _value => super._value as _RequestsReceived;

  @override
  $Res call({
    Object? failureOrRequests = freezed,
  }) {
    return _then(_RequestsReceived(
      failureOrRequests == freezed
          ? _value.failureOrRequests
          : failureOrRequests // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, List<Request>>,
    ));
  }
}

/// @nodoc

class _$_RequestsReceived implements _RequestsReceived {
  const _$_RequestsReceived(this.failureOrRequests);

  @override
  final Result<ReviewFailure, List<Request>> failureOrRequests;

  @override
  String toString() {
    return 'RequestFetcherEvent.requestsReceived(failureOrRequests: $failureOrRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestsReceived &&
            (identical(other.failureOrRequests, failureOrRequests) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRequests, failureOrRequests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRequests);

  @JsonKey(ignore: true)
  @override
  _$RequestsReceivedCopyWith<_RequestsReceived> get copyWith =>
      __$RequestsReceivedCopyWithImpl<_RequestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)
        fetchRequests,
    required TResult Function(String accessToken, String userId)
        fetchMyRequests,
    required TResult Function(
            Result<ReviewFailure, List<Request>> failureOrRequests)
        requestsReceived,
  }) {
    return requestsReceived(failureOrRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String accessToken, int pageNumber, String userId, String filterBy)?
        fetchRequests,
    TResult Function(String accessToken, String userId)? fetchMyRequests,
    TResult Function(Result<ReviewFailure, List<Request>> failureOrRequests)?
        requestsReceived,
    required TResult orElse(),
  }) {
    if (requestsReceived != null) {
      return requestsReceived(failureOrRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequests value) fetchRequests,
    required TResult Function(_FetchMyRequests value) fetchMyRequests,
    required TResult Function(_RequestsReceived value) requestsReceived,
  }) {
    return requestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequests value)? fetchRequests,
    TResult Function(_FetchMyRequests value)? fetchMyRequests,
    TResult Function(_RequestsReceived value)? requestsReceived,
    required TResult orElse(),
  }) {
    if (requestsReceived != null) {
      return requestsReceived(this);
    }
    return orElse();
  }
}

abstract class _RequestsReceived implements RequestFetcherEvent {
  const factory _RequestsReceived(
          Result<ReviewFailure, List<Request>> failureOrRequests) =
      _$_RequestsReceived;

  Result<ReviewFailure, List<Request>> get failureOrRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestsReceivedCopyWith<_RequestsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RequestFetcherStateTearOff {
  const _$RequestFetcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Request> requests) {
    return _LoadSuccess(
      requests,
    );
  }

  _LoadFailure loadFailure(ReviewFailure reviewFailure) {
    return _LoadFailure(
      reviewFailure,
    );
  }
}

/// @nodoc
const $RequestFetcherState = _$RequestFetcherStateTearOff();

/// @nodoc
mixin _$RequestFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Request> requests) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Request> requests)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
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
abstract class $RequestFetcherStateCopyWith<$Res> {
  factory $RequestFetcherStateCopyWith(
          RequestFetcherState value, $Res Function(RequestFetcherState) then) =
      _$RequestFetcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFetcherStateCopyWithImpl<$Res>
    implements $RequestFetcherStateCopyWith<$Res> {
  _$RequestFetcherStateCopyWithImpl(this._value, this._then);

  final RequestFetcherState _value;
  // ignore: unused_field
  final $Res Function(RequestFetcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RequestFetcherStateCopyWithImpl<$Res>
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
    return 'RequestFetcherState.initial()';
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
    required TResult Function(List<Request> requests) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Request> requests)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
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

abstract class _Initial implements RequestFetcherState {
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
    extends _$RequestFetcherStateCopyWithImpl<$Res>
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
    return 'RequestFetcherState.loadInProgress()';
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
    required TResult Function(List<Request> requests) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Request> requests)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
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

abstract class _LoadInProgress implements RequestFetcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Request> requests});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$RequestFetcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? requests = freezed,
  }) {
    return _then(_LoadSuccess(
      requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.requests);

  @override
  final List<Request> requests;

  @override
  String toString() {
    return 'RequestFetcherState.loadSuccess(requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requests);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Request> requests) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadSuccess(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Request> requests)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(requests);
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

abstract class _LoadSuccess implements RequestFetcherState {
  const factory _LoadSuccess(List<Request> requests) = _$_LoadSuccess;

  List<Request> get requests => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure reviewFailure});

  $ReviewFailureCopyWith<$Res> get reviewFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$RequestFetcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? reviewFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.reviewFailure);

  @override
  final ReviewFailure reviewFailure;

  @override
  String toString() {
    return 'RequestFetcherState.loadFailure(reviewFailure: $reviewFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.reviewFailure, reviewFailure) ||
                const DeepCollectionEquality()
                    .equals(other.reviewFailure, reviewFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Request> requests) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Request> requests)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(reviewFailure);
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

abstract class _LoadFailure implements RequestFetcherState {
  const factory _LoadFailure(ReviewFailure reviewFailure) = _$_LoadFailure;

  ReviewFailure get reviewFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
