// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewActorEventTearOff {
  const _$ReviewActorEventTearOff();

  _Deleted deleted(Review review, String accessToken, String userId) {
    return _Deleted(
      review,
      accessToken,
      userId,
    );
  }

  _Created created() {
    return const _Created();
  }

  _Edited edited(Review review) {
    return _Edited(
      review,
    );
  }
}

/// @nodoc
const $ReviewActorEvent = _$ReviewActorEventTearOff();

/// @nodoc
mixin _$ReviewActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review review, String accessToken, String userId)
        deleted,
    required TResult Function() created,
    required TResult Function(Review review) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review review, String accessToken, String userId)? deleted,
    TResult Function()? created,
    TResult Function(Review review)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewActorEventCopyWith<$Res> {
  factory $ReviewActorEventCopyWith(
          ReviewActorEvent value, $Res Function(ReviewActorEvent) then) =
      _$ReviewActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewActorEventCopyWithImpl<$Res>
    implements $ReviewActorEventCopyWith<$Res> {
  _$ReviewActorEventCopyWithImpl(this._value, this._then);

  final ReviewActorEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewActorEvent) _then;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Review review, String accessToken, String userId});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$ReviewActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? review = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Deleted(
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
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

  @override
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.review, this.accessToken, this.userId);

  @override
  final Review review;
  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'ReviewActorEvent.deleted(review: $review, accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review review, String accessToken, String userId)
        deleted,
    required TResult Function() created,
    required TResult Function(Review review) edited,
  }) {
    return deleted(review, accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review review, String accessToken, String userId)? deleted,
    TResult Function()? created,
    TResult Function(Review review)? edited,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(review, accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ReviewActorEvent {
  const factory _Deleted(Review review, String accessToken, String userId) =
      _$_Deleted;

  Review get review => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$ReviewActorEventCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created();

  @override
  String toString() {
    return 'ReviewActorEvent.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review review, String accessToken, String userId)
        deleted,
    required TResult Function() created,
    required TResult Function(Review review) edited,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review review, String accessToken, String userId)? deleted,
    TResult Function()? created,
    TResult Function(Review review)? edited,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements ReviewActorEvent {
  const factory _Created() = _$_Created;
}

/// @nodoc
abstract class _$EditedCopyWith<$Res> {
  factory _$EditedCopyWith(_Edited value, $Res Function(_Edited) then) =
      __$EditedCopyWithImpl<$Res>;
  $Res call({Review review});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$EditedCopyWithImpl<$Res> extends _$ReviewActorEventCopyWithImpl<$Res>
    implements _$EditedCopyWith<$Res> {
  __$EditedCopyWithImpl(_Edited _value, $Res Function(_Edited) _then)
      : super(_value, (v) => _then(v as _Edited));

  @override
  _Edited get _value => super._value as _Edited;

  @override
  $Res call({
    Object? review = freezed,
  }) {
    return _then(_Edited(
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc

class _$_Edited implements _Edited {
  const _$_Edited(this.review);

  @override
  final Review review;

  @override
  String toString() {
    return 'ReviewActorEvent.edited(review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edited &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(review);

  @JsonKey(ignore: true)
  @override
  _$EditedCopyWith<_Edited> get copyWith =>
      __$EditedCopyWithImpl<_Edited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review review, String accessToken, String userId)
        deleted,
    required TResult Function() created,
    required TResult Function(Review review) edited,
  }) {
    return edited(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review review, String accessToken, String userId)? deleted,
    TResult Function()? created,
    TResult Function(Review review)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Created value) created,
    required TResult Function(_Edited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Created value)? created,
    TResult Function(_Edited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements ReviewActorEvent {
  const factory _Edited(Review review) = _$_Edited;

  Review get review => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditedCopyWith<_Edited> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewActorStateTearOff {
  const _$ReviewActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteFailure deleteFailure(ReviewFailure reviewFailure) {
    return _DeleteFailure(
      reviewFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _CreateReview createReview() {
    return const _CreateReview();
  }

  _UpdateReview updateReview() {
    return const _UpdateReview();
  }
}

/// @nodoc
const $ReviewActorState = _$ReviewActorStateTearOff();

/// @nodoc
mixin _$ReviewActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewActorStateCopyWith<$Res> {
  factory $ReviewActorStateCopyWith(
          ReviewActorState value, $Res Function(ReviewActorState) then) =
      _$ReviewActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewActorStateCopyWithImpl<$Res>
    implements $ReviewActorStateCopyWith<$Res> {
  _$ReviewActorStateCopyWithImpl(this._value, this._then);

  final ReviewActorState _value;
  // ignore: unused_field
  final $Res Function(ReviewActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ReviewActorStateCopyWithImpl<$Res>
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
    return 'ReviewActorState.initial()';
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
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
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
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewActorState {
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
    extends _$ReviewActorStateCopyWithImpl<$Res>
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
    return 'ReviewActorState.actionInProgress()';
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
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
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
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ReviewActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure reviewFailure});

  $ReviewFailureCopyWith<$Res> get reviewFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ReviewActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? reviewFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.reviewFailure);

  @override
  final ReviewFailure reviewFailure;

  @override
  String toString() {
    return 'ReviewActorState.deleteFailure(reviewFailure: $reviewFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.reviewFailure, reviewFailure) ||
                const DeepCollectionEquality()
                    .equals(other.reviewFailure, reviewFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewFailure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return deleteFailure(reviewFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(reviewFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ReviewActorState {
  const factory _DeleteFailure(ReviewFailure reviewFailure) = _$_DeleteFailure;

  ReviewFailure get reviewFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$ReviewActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ReviewActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ReviewActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$CreateReviewCopyWith<$Res> {
  factory _$CreateReviewCopyWith(
          _CreateReview value, $Res Function(_CreateReview) then) =
      __$CreateReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateReviewCopyWithImpl<$Res>
    extends _$ReviewActorStateCopyWithImpl<$Res>
    implements _$CreateReviewCopyWith<$Res> {
  __$CreateReviewCopyWithImpl(
      _CreateReview _value, $Res Function(_CreateReview) _then)
      : super(_value, (v) => _then(v as _CreateReview));

  @override
  _CreateReview get _value => super._value as _CreateReview;
}

/// @nodoc

class _$_CreateReview implements _CreateReview {
  const _$_CreateReview();

  @override
  String toString() {
    return 'ReviewActorState.createReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return createReview();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return createReview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview(this);
    }
    return orElse();
  }
}

abstract class _CreateReview implements ReviewActorState {
  const factory _CreateReview() = _$_CreateReview;
}

/// @nodoc
abstract class _$UpdateReviewCopyWith<$Res> {
  factory _$UpdateReviewCopyWith(
          _UpdateReview value, $Res Function(_UpdateReview) then) =
      __$UpdateReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateReviewCopyWithImpl<$Res>
    extends _$ReviewActorStateCopyWithImpl<$Res>
    implements _$UpdateReviewCopyWith<$Res> {
  __$UpdateReviewCopyWithImpl(
      _UpdateReview _value, $Res Function(_UpdateReview) _then)
      : super(_value, (v) => _then(v as _UpdateReview));

  @override
  _UpdateReview get _value => super._value as _UpdateReview;
}

/// @nodoc

class _$_UpdateReview implements _UpdateReview {
  const _$_UpdateReview();

  @override
  String toString() {
    return 'ReviewActorState.updateReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(ReviewFailure reviewFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() createReview,
    required TResult Function() updateReview,
  }) {
    return updateReview();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(ReviewFailure reviewFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? createReview,
    TResult Function()? updateReview,
    required TResult orElse(),
  }) {
    if (updateReview != null) {
      return updateReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CreateReview value) createReview,
    required TResult Function(_UpdateReview value) updateReview,
  }) {
    return updateReview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CreateReview value)? createReview,
    TResult Function(_UpdateReview value)? updateReview,
    required TResult orElse(),
  }) {
    if (updateReview != null) {
      return updateReview(this);
    }
    return orElse();
  }
}

abstract class _UpdateReview implements ReviewActorState {
  const factory _UpdateReview() = _$_UpdateReview;
}
