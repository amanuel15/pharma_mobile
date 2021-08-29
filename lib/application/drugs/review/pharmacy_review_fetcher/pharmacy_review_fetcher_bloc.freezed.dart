// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pharmacy_review_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PharmacyReviewFetcherEventTearOff {
  const _$PharmacyReviewFetcherEventTearOff();

  _FetchPharmacyReviews fetchPharmacyReviews(String pharmacyId,
      String accessToken, int pageNumber, String userId, String filterBy) {
    return _FetchPharmacyReviews(
      pharmacyId,
      accessToken,
      pageNumber,
      userId,
      filterBy,
    );
  }

  _FetchMyPharmacyReviews fetchMyPharmacyReviews(
      String accessToken, int pageNumber, String userId) {
    return _FetchMyPharmacyReviews(
      accessToken,
      pageNumber,
      userId,
    );
  }

  _PharmacyReviewsReceived pharmacyReviewsReceived(
      Result<ReviewFailure, List<PharmacyReview>> failureOrPharmacyReviews) {
    return _PharmacyReviewsReceived(
      failureOrPharmacyReviews,
    );
  }
}

/// @nodoc
const $PharmacyReviewFetcherEvent = _$PharmacyReviewFetcherEventTearOff();

/// @nodoc
mixin _$PharmacyReviewFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId, String accessToken,
            int pageNumber, String userId, String filterBy)
        fetchPharmacyReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyPharmacyReviews,
    required TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)
        pharmacyReviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchPharmacyReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyPharmacyReviews,
    TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)?
        pharmacyReviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacyReviews value) fetchPharmacyReviews,
    required TResult Function(_FetchMyPharmacyReviews value)
        fetchMyPharmacyReviews,
    required TResult Function(_PharmacyReviewsReceived value)
        pharmacyReviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacyReviews value)? fetchPharmacyReviews,
    TResult Function(_FetchMyPharmacyReviews value)? fetchMyPharmacyReviews,
    TResult Function(_PharmacyReviewsReceived value)? pharmacyReviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyReviewFetcherEventCopyWith<$Res> {
  factory $PharmacyReviewFetcherEventCopyWith(PharmacyReviewFetcherEvent value,
          $Res Function(PharmacyReviewFetcherEvent) then) =
      _$PharmacyReviewFetcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PharmacyReviewFetcherEventCopyWithImpl<$Res>
    implements $PharmacyReviewFetcherEventCopyWith<$Res> {
  _$PharmacyReviewFetcherEventCopyWithImpl(this._value, this._then);

  final PharmacyReviewFetcherEvent _value;
  // ignore: unused_field
  final $Res Function(PharmacyReviewFetcherEvent) _then;
}

/// @nodoc
abstract class _$FetchPharmacyReviewsCopyWith<$Res> {
  factory _$FetchPharmacyReviewsCopyWith(_FetchPharmacyReviews value,
          $Res Function(_FetchPharmacyReviews) then) =
      __$FetchPharmacyReviewsCopyWithImpl<$Res>;
  $Res call(
      {String pharmacyId,
      String accessToken,
      int pageNumber,
      String userId,
      String filterBy});
}

/// @nodoc
class __$FetchPharmacyReviewsCopyWithImpl<$Res>
    extends _$PharmacyReviewFetcherEventCopyWithImpl<$Res>
    implements _$FetchPharmacyReviewsCopyWith<$Res> {
  __$FetchPharmacyReviewsCopyWithImpl(
      _FetchPharmacyReviews _value, $Res Function(_FetchPharmacyReviews) _then)
      : super(_value, (v) => _then(v as _FetchPharmacyReviews));

  @override
  _FetchPharmacyReviews get _value => super._value as _FetchPharmacyReviews;

  @override
  $Res call({
    Object? pharmacyId = freezed,
    Object? accessToken = freezed,
    Object? pageNumber = freezed,
    Object? userId = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_FetchPharmacyReviews(
      pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_FetchPharmacyReviews implements _FetchPharmacyReviews {
  const _$_FetchPharmacyReviews(this.pharmacyId, this.accessToken,
      this.pageNumber, this.userId, this.filterBy);

  @override
  final String pharmacyId;
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
    return 'PharmacyReviewFetcherEvent.fetchPharmacyReviews(pharmacyId: $pharmacyId, accessToken: $accessToken, pageNumber: $pageNumber, userId: $userId, filterBy: $filterBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchPharmacyReviews &&
            (identical(other.pharmacyId, pharmacyId) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyId, pharmacyId)) &&
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
      const DeepCollectionEquality().hash(pharmacyId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(filterBy);

  @JsonKey(ignore: true)
  @override
  _$FetchPharmacyReviewsCopyWith<_FetchPharmacyReviews> get copyWith =>
      __$FetchPharmacyReviewsCopyWithImpl<_FetchPharmacyReviews>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId, String accessToken,
            int pageNumber, String userId, String filterBy)
        fetchPharmacyReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyPharmacyReviews,
    required TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)
        pharmacyReviewsReceived,
  }) {
    return fetchPharmacyReviews(
        pharmacyId, accessToken, pageNumber, userId, filterBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchPharmacyReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyPharmacyReviews,
    TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)?
        pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchPharmacyReviews != null) {
      return fetchPharmacyReviews(
          pharmacyId, accessToken, pageNumber, userId, filterBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacyReviews value) fetchPharmacyReviews,
    required TResult Function(_FetchMyPharmacyReviews value)
        fetchMyPharmacyReviews,
    required TResult Function(_PharmacyReviewsReceived value)
        pharmacyReviewsReceived,
  }) {
    return fetchPharmacyReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacyReviews value)? fetchPharmacyReviews,
    TResult Function(_FetchMyPharmacyReviews value)? fetchMyPharmacyReviews,
    TResult Function(_PharmacyReviewsReceived value)? pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchPharmacyReviews != null) {
      return fetchPharmacyReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchPharmacyReviews implements PharmacyReviewFetcherEvent {
  const factory _FetchPharmacyReviews(String pharmacyId, String accessToken,
      int pageNumber, String userId, String filterBy) = _$_FetchPharmacyReviews;

  String get pharmacyId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get filterBy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchPharmacyReviewsCopyWith<_FetchPharmacyReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchMyPharmacyReviewsCopyWith<$Res> {
  factory _$FetchMyPharmacyReviewsCopyWith(_FetchMyPharmacyReviews value,
          $Res Function(_FetchMyPharmacyReviews) then) =
      __$FetchMyPharmacyReviewsCopyWithImpl<$Res>;
  $Res call({String accessToken, int pageNumber, String userId});
}

/// @nodoc
class __$FetchMyPharmacyReviewsCopyWithImpl<$Res>
    extends _$PharmacyReviewFetcherEventCopyWithImpl<$Res>
    implements _$FetchMyPharmacyReviewsCopyWith<$Res> {
  __$FetchMyPharmacyReviewsCopyWithImpl(_FetchMyPharmacyReviews _value,
      $Res Function(_FetchMyPharmacyReviews) _then)
      : super(_value, (v) => _then(v as _FetchMyPharmacyReviews));

  @override
  _FetchMyPharmacyReviews get _value => super._value as _FetchMyPharmacyReviews;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? pageNumber = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FetchMyPharmacyReviews(
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
    ));
  }
}

/// @nodoc

class _$_FetchMyPharmacyReviews implements _FetchMyPharmacyReviews {
  const _$_FetchMyPharmacyReviews(
      this.accessToken, this.pageNumber, this.userId);

  @override
  final String accessToken;
  @override
  final int pageNumber;
  @override
  final String userId;

  @override
  String toString() {
    return 'PharmacyReviewFetcherEvent.fetchMyPharmacyReviews(accessToken: $accessToken, pageNumber: $pageNumber, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchMyPharmacyReviews &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FetchMyPharmacyReviewsCopyWith<_FetchMyPharmacyReviews> get copyWith =>
      __$FetchMyPharmacyReviewsCopyWithImpl<_FetchMyPharmacyReviews>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId, String accessToken,
            int pageNumber, String userId, String filterBy)
        fetchPharmacyReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyPharmacyReviews,
    required TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)
        pharmacyReviewsReceived,
  }) {
    return fetchMyPharmacyReviews(accessToken, pageNumber, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchPharmacyReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyPharmacyReviews,
    TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)?
        pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyPharmacyReviews != null) {
      return fetchMyPharmacyReviews(accessToken, pageNumber, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacyReviews value) fetchPharmacyReviews,
    required TResult Function(_FetchMyPharmacyReviews value)
        fetchMyPharmacyReviews,
    required TResult Function(_PharmacyReviewsReceived value)
        pharmacyReviewsReceived,
  }) {
    return fetchMyPharmacyReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacyReviews value)? fetchPharmacyReviews,
    TResult Function(_FetchMyPharmacyReviews value)? fetchMyPharmacyReviews,
    TResult Function(_PharmacyReviewsReceived value)? pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyPharmacyReviews != null) {
      return fetchMyPharmacyReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchMyPharmacyReviews implements PharmacyReviewFetcherEvent {
  const factory _FetchMyPharmacyReviews(
          String accessToken, int pageNumber, String userId) =
      _$_FetchMyPharmacyReviews;

  String get accessToken => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchMyPharmacyReviewsCopyWith<_FetchMyPharmacyReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PharmacyReviewsReceivedCopyWith<$Res> {
  factory _$PharmacyReviewsReceivedCopyWith(_PharmacyReviewsReceived value,
          $Res Function(_PharmacyReviewsReceived) then) =
      __$PharmacyReviewsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Result<ReviewFailure, List<PharmacyReview>> failureOrPharmacyReviews});
}

/// @nodoc
class __$PharmacyReviewsReceivedCopyWithImpl<$Res>
    extends _$PharmacyReviewFetcherEventCopyWithImpl<$Res>
    implements _$PharmacyReviewsReceivedCopyWith<$Res> {
  __$PharmacyReviewsReceivedCopyWithImpl(_PharmacyReviewsReceived _value,
      $Res Function(_PharmacyReviewsReceived) _then)
      : super(_value, (v) => _then(v as _PharmacyReviewsReceived));

  @override
  _PharmacyReviewsReceived get _value =>
      super._value as _PharmacyReviewsReceived;

  @override
  $Res call({
    Object? failureOrPharmacyReviews = freezed,
  }) {
    return _then(_PharmacyReviewsReceived(
      failureOrPharmacyReviews == freezed
          ? _value.failureOrPharmacyReviews
          : failureOrPharmacyReviews // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, List<PharmacyReview>>,
    ));
  }
}

/// @nodoc

class _$_PharmacyReviewsReceived implements _PharmacyReviewsReceived {
  const _$_PharmacyReviewsReceived(this.failureOrPharmacyReviews);

  @override
  final Result<ReviewFailure, List<PharmacyReview>> failureOrPharmacyReviews;

  @override
  String toString() {
    return 'PharmacyReviewFetcherEvent.pharmacyReviewsReceived(failureOrPharmacyReviews: $failureOrPharmacyReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PharmacyReviewsReceived &&
            (identical(
                    other.failureOrPharmacyReviews, failureOrPharmacyReviews) ||
                const DeepCollectionEquality().equals(
                    other.failureOrPharmacyReviews, failureOrPharmacyReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPharmacyReviews);

  @JsonKey(ignore: true)
  @override
  _$PharmacyReviewsReceivedCopyWith<_PharmacyReviewsReceived> get copyWith =>
      __$PharmacyReviewsReceivedCopyWithImpl<_PharmacyReviewsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId, String accessToken,
            int pageNumber, String userId, String filterBy)
        fetchPharmacyReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyPharmacyReviews,
    required TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)
        pharmacyReviewsReceived,
  }) {
    return pharmacyReviewsReceived(failureOrPharmacyReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchPharmacyReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyPharmacyReviews,
    TResult Function(
            Result<ReviewFailure, List<PharmacyReview>>
                failureOrPharmacyReviews)?
        pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (pharmacyReviewsReceived != null) {
      return pharmacyReviewsReceived(failureOrPharmacyReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacyReviews value) fetchPharmacyReviews,
    required TResult Function(_FetchMyPharmacyReviews value)
        fetchMyPharmacyReviews,
    required TResult Function(_PharmacyReviewsReceived value)
        pharmacyReviewsReceived,
  }) {
    return pharmacyReviewsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacyReviews value)? fetchPharmacyReviews,
    TResult Function(_FetchMyPharmacyReviews value)? fetchMyPharmacyReviews,
    TResult Function(_PharmacyReviewsReceived value)? pharmacyReviewsReceived,
    required TResult orElse(),
  }) {
    if (pharmacyReviewsReceived != null) {
      return pharmacyReviewsReceived(this);
    }
    return orElse();
  }
}

abstract class _PharmacyReviewsReceived implements PharmacyReviewFetcherEvent {
  const factory _PharmacyReviewsReceived(
      Result<ReviewFailure, List<PharmacyReview>>
          failureOrPharmacyReviews) = _$_PharmacyReviewsReceived;

  Result<ReviewFailure, List<PharmacyReview>> get failureOrPharmacyReviews =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PharmacyReviewsReceivedCopyWith<_PharmacyReviewsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PharmacyReviewFetcherStateTearOff {
  const _$PharmacyReviewFetcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<PharmacyReview> reviews) {
    return _LoadSuccess(
      reviews,
    );
  }

  _LoadFailure loadFailure(ReviewFailure reviewFailure) {
    return _LoadFailure(
      reviewFailure,
    );
  }
}

/// @nodoc
const $PharmacyReviewFetcherState = _$PharmacyReviewFetcherStateTearOff();

/// @nodoc
mixin _$PharmacyReviewFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PharmacyReview> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PharmacyReview> reviews)? loadSuccess,
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
abstract class $PharmacyReviewFetcherStateCopyWith<$Res> {
  factory $PharmacyReviewFetcherStateCopyWith(PharmacyReviewFetcherState value,
          $Res Function(PharmacyReviewFetcherState) then) =
      _$PharmacyReviewFetcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PharmacyReviewFetcherStateCopyWithImpl<$Res>
    implements $PharmacyReviewFetcherStateCopyWith<$Res> {
  _$PharmacyReviewFetcherStateCopyWithImpl(this._value, this._then);

  final PharmacyReviewFetcherState _value;
  // ignore: unused_field
  final $Res Function(PharmacyReviewFetcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PharmacyReviewFetcherStateCopyWithImpl<$Res>
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
    return 'PharmacyReviewFetcherState.initial()';
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
    required TResult Function(List<PharmacyReview> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PharmacyReview> reviews)? loadSuccess,
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

abstract class _Initial implements PharmacyReviewFetcherState {
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
    extends _$PharmacyReviewFetcherStateCopyWithImpl<$Res>
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
    return 'PharmacyReviewFetcherState.loadInProgress()';
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
    required TResult Function(List<PharmacyReview> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PharmacyReview> reviews)? loadSuccess,
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

abstract class _LoadInProgress implements PharmacyReviewFetcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<PharmacyReview> reviews});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PharmacyReviewFetcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(_LoadSuccess(
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PharmacyReview>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.reviews);

  @override
  final List<PharmacyReview> reviews;

  @override
  String toString() {
    return 'PharmacyReviewFetcherState.loadSuccess(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviews);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<PharmacyReview> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadSuccess(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PharmacyReview> reviews)? loadSuccess,
    TResult Function(ReviewFailure reviewFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(reviews);
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

abstract class _LoadSuccess implements PharmacyReviewFetcherState {
  const factory _LoadSuccess(List<PharmacyReview> reviews) = _$_LoadSuccess;

  List<PharmacyReview> get reviews => throw _privateConstructorUsedError;
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
    extends _$PharmacyReviewFetcherStateCopyWithImpl<$Res>
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
    return 'PharmacyReviewFetcherState.loadFailure(reviewFailure: $reviewFailure)';
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
    required TResult Function(List<PharmacyReview> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<PharmacyReview> reviews)? loadSuccess,
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

abstract class _LoadFailure implements PharmacyReviewFetcherState {
  const factory _LoadFailure(ReviewFailure reviewFailure) = _$_LoadFailure;

  ReviewFailure get reviewFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
