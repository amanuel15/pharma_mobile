// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewFormEventTearOff {
  const _$ReviewFormEventTearOff();

  _Initialized initialized(Review? initialReviewOption, String userId,
      String accessToken, String userName, String drugId) {
    return _Initialized(
      initialReviewOption,
      userId,
      accessToken,
      userName,
      drugId,
    );
  }

  _ReviewBodyChanged reviewBodyChanged(String reviewBodyStr) {
    return _ReviewBodyChanged(
      reviewBodyStr,
    );
  }

  _ReviewStarChanged reviewStarChanged(double reviewStarInt) {
    return _ReviewStarChanged(
      reviewStarInt,
    );
  }

  _ReviewBtnPressed reviewBtnPressed() {
    return const _ReviewBtnPressed();
  }
}

/// @nodoc
const $ReviewFormEvent = _$ReviewFormEventTearOff();

/// @nodoc
mixin _$ReviewFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)
        initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(double reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)?
        initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(double reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReviewBodyChanged value) reviewBodyChanged,
    required TResult Function(_ReviewStarChanged value) reviewStarChanged,
    required TResult Function(_ReviewBtnPressed value) reviewBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReviewBodyChanged value)? reviewBodyChanged,
    TResult Function(_ReviewStarChanged value)? reviewStarChanged,
    TResult Function(_ReviewBtnPressed value)? reviewBtnPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewFormEventCopyWith<$Res> {
  factory $ReviewFormEventCopyWith(
          ReviewFormEvent value, $Res Function(ReviewFormEvent) then) =
      _$ReviewFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewFormEventCopyWithImpl<$Res>
    implements $ReviewFormEventCopyWith<$Res> {
  _$ReviewFormEventCopyWithImpl(this._value, this._then);

  final ReviewFormEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {Review? initialReviewOption,
      String userId,
      String accessToken,
      String userName,
      String drugId});

  $ReviewCopyWith<$Res>? get initialReviewOption;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialReviewOption = freezed,
    Object? userId = freezed,
    Object? accessToken = freezed,
    Object? userName = freezed,
    Object? drugId = freezed,
  }) {
    return _then(_Initialized(
      initialReviewOption == freezed
          ? _value.initialReviewOption
          : initialReviewOption // ignore: cast_nullable_to_non_nullable
              as Review?,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ReviewCopyWith<$Res>? get initialReviewOption {
    if (_value.initialReviewOption == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.initialReviewOption!, (value) {
      return _then(_value.copyWith(initialReviewOption: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialReviewOption, this.userId, this.accessToken,
      this.userName, this.drugId);

  @override
  final Review? initialReviewOption;
  @override
  final String userId;
  @override
  final String accessToken;
  @override
  final String userName;
  @override
  final String drugId;

  @override
  String toString() {
    return 'ReviewFormEvent.initialized(initialReviewOption: $initialReviewOption, userId: $userId, accessToken: $accessToken, userName: $userName, drugId: $drugId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialReviewOption, initialReviewOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialReviewOption, initialReviewOption)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialReviewOption) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(drugId);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)
        initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(double reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return initialized(
        initialReviewOption, userId, accessToken, userName, drugId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)?
        initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(double reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          initialReviewOption, userId, accessToken, userName, drugId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReviewBodyChanged value) reviewBodyChanged,
    required TResult Function(_ReviewStarChanged value) reviewStarChanged,
    required TResult Function(_ReviewBtnPressed value) reviewBtnPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReviewBodyChanged value)? reviewBodyChanged,
    TResult Function(_ReviewStarChanged value)? reviewStarChanged,
    TResult Function(_ReviewBtnPressed value)? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ReviewFormEvent {
  const factory _Initialized(Review? initialReviewOption, String userId,
      String accessToken, String userName, String drugId) = _$_Initialized;

  Review? get initialReviewOption => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get drugId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewBodyChangedCopyWith<$Res> {
  factory _$ReviewBodyChangedCopyWith(
          _ReviewBodyChanged value, $Res Function(_ReviewBodyChanged) then) =
      __$ReviewBodyChangedCopyWithImpl<$Res>;
  $Res call({String reviewBodyStr});
}

/// @nodoc
class __$ReviewBodyChangedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$ReviewBodyChangedCopyWith<$Res> {
  __$ReviewBodyChangedCopyWithImpl(
      _ReviewBodyChanged _value, $Res Function(_ReviewBodyChanged) _then)
      : super(_value, (v) => _then(v as _ReviewBodyChanged));

  @override
  _ReviewBodyChanged get _value => super._value as _ReviewBodyChanged;

  @override
  $Res call({
    Object? reviewBodyStr = freezed,
  }) {
    return _then(_ReviewBodyChanged(
      reviewBodyStr == freezed
          ? _value.reviewBodyStr
          : reviewBodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewBodyChanged implements _ReviewBodyChanged {
  const _$_ReviewBodyChanged(this.reviewBodyStr);

  @override
  final String reviewBodyStr;

  @override
  String toString() {
    return 'ReviewFormEvent.reviewBodyChanged(reviewBodyStr: $reviewBodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewBodyChanged &&
            (identical(other.reviewBodyStr, reviewBodyStr) ||
                const DeepCollectionEquality()
                    .equals(other.reviewBodyStr, reviewBodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewBodyStr);

  @JsonKey(ignore: true)
  @override
  _$ReviewBodyChangedCopyWith<_ReviewBodyChanged> get copyWith =>
      __$ReviewBodyChangedCopyWithImpl<_ReviewBodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)
        initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(double reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewBodyChanged(reviewBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)?
        initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(double reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewBodyChanged != null) {
      return reviewBodyChanged(reviewBodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReviewBodyChanged value) reviewBodyChanged,
    required TResult Function(_ReviewStarChanged value) reviewStarChanged,
    required TResult Function(_ReviewBtnPressed value) reviewBtnPressed,
  }) {
    return reviewBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReviewBodyChanged value)? reviewBodyChanged,
    TResult Function(_ReviewStarChanged value)? reviewStarChanged,
    TResult Function(_ReviewBtnPressed value)? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewBodyChanged != null) {
      return reviewBodyChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewBodyChanged implements ReviewFormEvent {
  const factory _ReviewBodyChanged(String reviewBodyStr) = _$_ReviewBodyChanged;

  String get reviewBodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReviewBodyChangedCopyWith<_ReviewBodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewStarChangedCopyWith<$Res> {
  factory _$ReviewStarChangedCopyWith(
          _ReviewStarChanged value, $Res Function(_ReviewStarChanged) then) =
      __$ReviewStarChangedCopyWithImpl<$Res>;
  $Res call({double reviewStarInt});
}

/// @nodoc
class __$ReviewStarChangedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$ReviewStarChangedCopyWith<$Res> {
  __$ReviewStarChangedCopyWithImpl(
      _ReviewStarChanged _value, $Res Function(_ReviewStarChanged) _then)
      : super(_value, (v) => _then(v as _ReviewStarChanged));

  @override
  _ReviewStarChanged get _value => super._value as _ReviewStarChanged;

  @override
  $Res call({
    Object? reviewStarInt = freezed,
  }) {
    return _then(_ReviewStarChanged(
      reviewStarInt == freezed
          ? _value.reviewStarInt
          : reviewStarInt // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ReviewStarChanged implements _ReviewStarChanged {
  const _$_ReviewStarChanged(this.reviewStarInt);

  @override
  final double reviewStarInt;

  @override
  String toString() {
    return 'ReviewFormEvent.reviewStarChanged(reviewStarInt: $reviewStarInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewStarChanged &&
            (identical(other.reviewStarInt, reviewStarInt) ||
                const DeepCollectionEquality()
                    .equals(other.reviewStarInt, reviewStarInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewStarInt);

  @JsonKey(ignore: true)
  @override
  _$ReviewStarChangedCopyWith<_ReviewStarChanged> get copyWith =>
      __$ReviewStarChangedCopyWithImpl<_ReviewStarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)
        initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(double reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewStarChanged(reviewStarInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)?
        initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(double reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewStarChanged != null) {
      return reviewStarChanged(reviewStarInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReviewBodyChanged value) reviewBodyChanged,
    required TResult Function(_ReviewStarChanged value) reviewStarChanged,
    required TResult Function(_ReviewBtnPressed value) reviewBtnPressed,
  }) {
    return reviewStarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReviewBodyChanged value)? reviewBodyChanged,
    TResult Function(_ReviewStarChanged value)? reviewStarChanged,
    TResult Function(_ReviewBtnPressed value)? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewStarChanged != null) {
      return reviewStarChanged(this);
    }
    return orElse();
  }
}

abstract class _ReviewStarChanged implements ReviewFormEvent {
  const factory _ReviewStarChanged(double reviewStarInt) = _$_ReviewStarChanged;

  double get reviewStarInt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReviewStarChangedCopyWith<_ReviewStarChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewBtnPressedCopyWith<$Res> {
  factory _$ReviewBtnPressedCopyWith(
          _ReviewBtnPressed value, $Res Function(_ReviewBtnPressed) then) =
      __$ReviewBtnPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReviewBtnPressedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$ReviewBtnPressedCopyWith<$Res> {
  __$ReviewBtnPressedCopyWithImpl(
      _ReviewBtnPressed _value, $Res Function(_ReviewBtnPressed) _then)
      : super(_value, (v) => _then(v as _ReviewBtnPressed));

  @override
  _ReviewBtnPressed get _value => super._value as _ReviewBtnPressed;
}

/// @nodoc

class _$_ReviewBtnPressed implements _ReviewBtnPressed {
  const _$_ReviewBtnPressed();

  @override
  String toString() {
    return 'ReviewFormEvent.reviewBtnPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReviewBtnPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)
        initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(double reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption, String userId,
            String accessToken, String userName, String drugId)?
        initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(double reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewBtnPressed != null) {
      return reviewBtnPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ReviewBodyChanged value) reviewBodyChanged,
    required TResult Function(_ReviewStarChanged value) reviewStarChanged,
    required TResult Function(_ReviewBtnPressed value) reviewBtnPressed,
  }) {
    return reviewBtnPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ReviewBodyChanged value)? reviewBodyChanged,
    TResult Function(_ReviewStarChanged value)? reviewStarChanged,
    TResult Function(_ReviewBtnPressed value)? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (reviewBtnPressed != null) {
      return reviewBtnPressed(this);
    }
    return orElse();
  }
}

abstract class _ReviewBtnPressed implements ReviewFormEvent {
  const factory _ReviewBtnPressed() = _$_ReviewBtnPressed;
}

/// @nodoc
class _$ReviewFormStateTearOff {
  const _$ReviewFormStateTearOff();

  _ReviewFormState call(
      {required Review review,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
      required String accessToken,
      required String userId,
      required String userName}) {
    return _ReviewFormState(
      review: review,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      reviewFailureOrSuccess: reviewFailureOrSuccess,
      accessToken: accessToken,
      userId: userId,
      userName: userName,
    );
  }
}

/// @nodoc
const $ReviewFormState = _$ReviewFormStateTearOff();

/// @nodoc
mixin _$ReviewFormState {
  Review get review => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Result<ReviewFailure, Unit>? get reviewFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewFormStateCopyWith<ReviewFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewFormStateCopyWith<$Res> {
  factory $ReviewFormStateCopyWith(
          ReviewFormState value, $Res Function(ReviewFormState) then) =
      _$ReviewFormStateCopyWithImpl<$Res>;
  $Res call(
      {Review review,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
      String accessToken,
      String userId,
      String userName});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$ReviewFormStateCopyWithImpl<$Res>
    implements $ReviewFormStateCopyWith<$Res> {
  _$ReviewFormStateCopyWithImpl(this._value, this._then);

  final ReviewFormState _value;
  // ignore: unused_field
  final $Res Function(ReviewFormState) _then;

  @override
  $Res call({
    Object? review = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccess = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewFailureOrSuccess: reviewFailureOrSuccess == freezed
          ? _value.reviewFailureOrSuccess
          : reviewFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, Unit>?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
abstract class _$ReviewFormStateCopyWith<$Res>
    implements $ReviewFormStateCopyWith<$Res> {
  factory _$ReviewFormStateCopyWith(
          _ReviewFormState value, $Res Function(_ReviewFormState) then) =
      __$ReviewFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Review review,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
      String accessToken,
      String userId,
      String userName});

  @override
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$ReviewFormStateCopyWithImpl<$Res>
    extends _$ReviewFormStateCopyWithImpl<$Res>
    implements _$ReviewFormStateCopyWith<$Res> {
  __$ReviewFormStateCopyWithImpl(
      _ReviewFormState _value, $Res Function(_ReviewFormState) _then)
      : super(_value, (v) => _then(v as _ReviewFormState));

  @override
  _ReviewFormState get _value => super._value as _ReviewFormState;

  @override
  $Res call({
    Object? review = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccess = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_ReviewFormState(
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewFailureOrSuccess: reviewFailureOrSuccess == freezed
          ? _value.reviewFailureOrSuccess
          : reviewFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, Unit>?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReviewFormState implements _ReviewFormState {
  const _$_ReviewFormState(
      {required this.review,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.reviewFailureOrSuccess,
      required this.accessToken,
      required this.userId,
      required this.userName});

  @override
  final Review review;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Result<ReviewFailure, Unit>? reviewFailureOrSuccess;
  @override
  final String accessToken;
  @override
  final String userId;
  @override
  final String userName;

  @override
  String toString() {
    return 'ReviewFormState(review: $review, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, reviewFailureOrSuccess: $reviewFailureOrSuccess, accessToken: $accessToken, userId: $userId, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewFormState &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.reviewFailureOrSuccess, reviewFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.reviewFailureOrSuccess, reviewFailureOrSuccess)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccess) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$ReviewFormStateCopyWith<_ReviewFormState> get copyWith =>
      __$ReviewFormStateCopyWithImpl<_ReviewFormState>(this, _$identity);
}

abstract class _ReviewFormState implements ReviewFormState {
  const factory _ReviewFormState(
      {required Review review,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
      required String accessToken,
      required String userId,
      required String userName}) = _$_ReviewFormState;

  @override
  Review get review => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Result<ReviewFailure, Unit>? get reviewFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewFormStateCopyWith<_ReviewFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
