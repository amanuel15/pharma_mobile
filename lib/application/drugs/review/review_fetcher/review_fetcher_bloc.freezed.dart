// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewFetcherEventTearOff {
  const _$ReviewFetcherEventTearOff();

  _FetchReviews fetchReviews(String drugId, String accessToken, int pageNumber,
      String userId, String filterBy) {
    return _FetchReviews(
      drugId,
      accessToken,
      pageNumber,
      userId,
      filterBy,
    );
  }

  _FetchMyReviews fetchMyReviews(
      String accessToken, int pageNumber, String userId) {
    return _FetchMyReviews(
      accessToken,
      pageNumber,
      userId,
    );
  }

  _ReviewsReceived reviewsReceived(
      Result<ReviewFailure, List<Review>> failureOrReviews) {
    return _ReviewsReceived(
      failureOrReviews,
    );
  }
}

/// @nodoc
const $ReviewFetcherEvent = _$ReviewFetcherEventTearOff();

/// @nodoc
mixin _$ReviewFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)
        fetchReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyReviews,
    required TResult Function(
            Result<ReviewFailure, List<Review>> failureOrReviews)
        reviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyReviews,
    TResult Function(Result<ReviewFailure, List<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReviews value) fetchReviews,
    required TResult Function(_FetchMyReviews value) fetchMyReviews,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReviews value)? fetchReviews,
    TResult Function(_FetchMyReviews value)? fetchMyReviews,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewFetcherEventCopyWith<$Res> {
  factory $ReviewFetcherEventCopyWith(
          ReviewFetcherEvent value, $Res Function(ReviewFetcherEvent) then) =
      _$ReviewFetcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewFetcherEventCopyWithImpl<$Res>
    implements $ReviewFetcherEventCopyWith<$Res> {
  _$ReviewFetcherEventCopyWithImpl(this._value, this._then);

  final ReviewFetcherEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewFetcherEvent) _then;
}

/// @nodoc
abstract class _$FetchReviewsCopyWith<$Res> {
  factory _$FetchReviewsCopyWith(
          _FetchReviews value, $Res Function(_FetchReviews) then) =
      __$FetchReviewsCopyWithImpl<$Res>;
  $Res call(
      {String drugId,
      String accessToken,
      int pageNumber,
      String userId,
      String filterBy});
}

/// @nodoc
class __$FetchReviewsCopyWithImpl<$Res>
    extends _$ReviewFetcherEventCopyWithImpl<$Res>
    implements _$FetchReviewsCopyWith<$Res> {
  __$FetchReviewsCopyWithImpl(
      _FetchReviews _value, $Res Function(_FetchReviews) _then)
      : super(_value, (v) => _then(v as _FetchReviews));

  @override
  _FetchReviews get _value => super._value as _FetchReviews;

  @override
  $Res call({
    Object? drugId = freezed,
    Object? accessToken = freezed,
    Object? pageNumber = freezed,
    Object? userId = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_FetchReviews(
      drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
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

class _$_FetchReviews implements _FetchReviews {
  const _$_FetchReviews(this.drugId, this.accessToken, this.pageNumber,
      this.userId, this.filterBy);

  @override
  final String drugId;
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
    return 'ReviewFetcherEvent.fetchReviews(drugId: $drugId, accessToken: $accessToken, pageNumber: $pageNumber, userId: $userId, filterBy: $filterBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchReviews &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)) &&
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
      const DeepCollectionEquality().hash(drugId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(filterBy);

  @JsonKey(ignore: true)
  @override
  _$FetchReviewsCopyWith<_FetchReviews> get copyWith =>
      __$FetchReviewsCopyWithImpl<_FetchReviews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)
        fetchReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyReviews,
    required TResult Function(
            Result<ReviewFailure, List<Review>> failureOrReviews)
        reviewsReceived,
  }) {
    return fetchReviews(drugId, accessToken, pageNumber, userId, filterBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyReviews,
    TResult Function(Result<ReviewFailure, List<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchReviews != null) {
      return fetchReviews(drugId, accessToken, pageNumber, userId, filterBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReviews value) fetchReviews,
    required TResult Function(_FetchMyReviews value) fetchMyReviews,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) {
    return fetchReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReviews value)? fetchReviews,
    TResult Function(_FetchMyReviews value)? fetchMyReviews,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchReviews != null) {
      return fetchReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchReviews implements ReviewFetcherEvent {
  const factory _FetchReviews(String drugId, String accessToken, int pageNumber,
      String userId, String filterBy) = _$_FetchReviews;

  String get drugId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get filterBy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchReviewsCopyWith<_FetchReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchMyReviewsCopyWith<$Res> {
  factory _$FetchMyReviewsCopyWith(
          _FetchMyReviews value, $Res Function(_FetchMyReviews) then) =
      __$FetchMyReviewsCopyWithImpl<$Res>;
  $Res call({String accessToken, int pageNumber, String userId});
}

/// @nodoc
class __$FetchMyReviewsCopyWithImpl<$Res>
    extends _$ReviewFetcherEventCopyWithImpl<$Res>
    implements _$FetchMyReviewsCopyWith<$Res> {
  __$FetchMyReviewsCopyWithImpl(
      _FetchMyReviews _value, $Res Function(_FetchMyReviews) _then)
      : super(_value, (v) => _then(v as _FetchMyReviews));

  @override
  _FetchMyReviews get _value => super._value as _FetchMyReviews;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? pageNumber = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FetchMyReviews(
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

class _$_FetchMyReviews implements _FetchMyReviews {
  const _$_FetchMyReviews(this.accessToken, this.pageNumber, this.userId);

  @override
  final String accessToken;
  @override
  final int pageNumber;
  @override
  final String userId;

  @override
  String toString() {
    return 'ReviewFetcherEvent.fetchMyReviews(accessToken: $accessToken, pageNumber: $pageNumber, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchMyReviews &&
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
  _$FetchMyReviewsCopyWith<_FetchMyReviews> get copyWith =>
      __$FetchMyReviewsCopyWithImpl<_FetchMyReviews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)
        fetchReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyReviews,
    required TResult Function(
            Result<ReviewFailure, List<Review>> failureOrReviews)
        reviewsReceived,
  }) {
    return fetchMyReviews(accessToken, pageNumber, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyReviews,
    TResult Function(Result<ReviewFailure, List<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyReviews != null) {
      return fetchMyReviews(accessToken, pageNumber, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReviews value) fetchReviews,
    required TResult Function(_FetchMyReviews value) fetchMyReviews,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) {
    return fetchMyReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReviews value)? fetchReviews,
    TResult Function(_FetchMyReviews value)? fetchMyReviews,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) {
    if (fetchMyReviews != null) {
      return fetchMyReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchMyReviews implements ReviewFetcherEvent {
  const factory _FetchMyReviews(
      String accessToken, int pageNumber, String userId) = _$_FetchMyReviews;

  String get accessToken => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchMyReviewsCopyWith<_FetchMyReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewsReceivedCopyWith<$Res> {
  factory _$ReviewsReceivedCopyWith(
          _ReviewsReceived value, $Res Function(_ReviewsReceived) then) =
      __$ReviewsReceivedCopyWithImpl<$Res>;
  $Res call({Result<ReviewFailure, List<Review>> failureOrReviews});
}

/// @nodoc
class __$ReviewsReceivedCopyWithImpl<$Res>
    extends _$ReviewFetcherEventCopyWithImpl<$Res>
    implements _$ReviewsReceivedCopyWith<$Res> {
  __$ReviewsReceivedCopyWithImpl(
      _ReviewsReceived _value, $Res Function(_ReviewsReceived) _then)
      : super(_value, (v) => _then(v as _ReviewsReceived));

  @override
  _ReviewsReceived get _value => super._value as _ReviewsReceived;

  @override
  $Res call({
    Object? failureOrReviews = freezed,
  }) {
    return _then(_ReviewsReceived(
      failureOrReviews == freezed
          ? _value.failureOrReviews
          : failureOrReviews // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, List<Review>>,
    ));
  }
}

/// @nodoc

class _$_ReviewsReceived implements _ReviewsReceived {
  const _$_ReviewsReceived(this.failureOrReviews);

  @override
  final Result<ReviewFailure, List<Review>> failureOrReviews;

  @override
  String toString() {
    return 'ReviewFetcherEvent.reviewsReceived(failureOrReviews: $failureOrReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsReceived &&
            (identical(other.failureOrReviews, failureOrReviews) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrReviews, failureOrReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrReviews);

  @JsonKey(ignore: true)
  @override
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith =>
      __$ReviewsReceivedCopyWithImpl<_ReviewsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)
        fetchReviews,
    required TResult Function(String accessToken, int pageNumber, String userId)
        fetchMyReviews,
    required TResult Function(
            Result<ReviewFailure, List<Review>> failureOrReviews)
        reviewsReceived,
  }) {
    return reviewsReceived(failureOrReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, int pageNumber,
            String userId, String filterBy)?
        fetchReviews,
    TResult Function(String accessToken, int pageNumber, String userId)?
        fetchMyReviews,
    TResult Function(Result<ReviewFailure, List<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) {
    if (reviewsReceived != null) {
      return reviewsReceived(failureOrReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReviews value) fetchReviews,
    required TResult Function(_FetchMyReviews value) fetchMyReviews,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) {
    return reviewsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReviews value)? fetchReviews,
    TResult Function(_FetchMyReviews value)? fetchMyReviews,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) {
    if (reviewsReceived != null) {
      return reviewsReceived(this);
    }
    return orElse();
  }
}

abstract class _ReviewsReceived implements ReviewFetcherEvent {
  const factory _ReviewsReceived(
          Result<ReviewFailure, List<Review>> failureOrReviews) =
      _$_ReviewsReceived;

  Result<ReviewFailure, List<Review>> get failureOrReviews =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewFetcherStateTearOff {
  const _$ReviewFetcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Review> reviews) {
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
const $ReviewFetcherState = _$ReviewFetcherStateTearOff();

/// @nodoc
mixin _$ReviewFetcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Review> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Review> reviews)? loadSuccess,
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
abstract class $ReviewFetcherStateCopyWith<$Res> {
  factory $ReviewFetcherStateCopyWith(
          ReviewFetcherState value, $Res Function(ReviewFetcherState) then) =
      _$ReviewFetcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewFetcherStateCopyWithImpl<$Res>
    implements $ReviewFetcherStateCopyWith<$Res> {
  _$ReviewFetcherStateCopyWithImpl(this._value, this._then);

  final ReviewFetcherState _value;
  // ignore: unused_field
  final $Res Function(ReviewFetcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ReviewFetcherStateCopyWithImpl<$Res>
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
    return 'ReviewFetcherState.initial()';
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
    required TResult Function(List<Review> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Review> reviews)? loadSuccess,
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

abstract class _Initial implements ReviewFetcherState {
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
    extends _$ReviewFetcherStateCopyWithImpl<$Res>
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
    return 'ReviewFetcherState.loadInProgress()';
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
    required TResult Function(List<Review> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Review> reviews)? loadSuccess,
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

abstract class _LoadInProgress implements ReviewFetcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Review> reviews});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ReviewFetcherStateCopyWithImpl<$Res>
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
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.reviews);

  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'ReviewFetcherState.loadSuccess(reviews: $reviews)';
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
    required TResult Function(List<Review> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadSuccess(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Review> reviews)? loadSuccess,
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

abstract class _LoadSuccess implements ReviewFetcherState {
  const factory _LoadSuccess(List<Review> reviews) = _$_LoadSuccess;

  List<Review> get reviews => throw _privateConstructorUsedError;
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
    extends _$ReviewFetcherStateCopyWithImpl<$Res>
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
    return 'ReviewFetcherState.loadFailure(reviewFailure: $reviewFailure)';
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
    required TResult Function(List<Review> reviews) loadSuccess,
    required TResult Function(ReviewFailure reviewFailure) loadFailure,
  }) {
    return loadFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Review> reviews)? loadSuccess,
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

abstract class _LoadFailure implements ReviewFetcherState {
  const factory _LoadFailure(ReviewFailure reviewFailure) = _$_LoadFailure;

  ReviewFailure get reviewFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
