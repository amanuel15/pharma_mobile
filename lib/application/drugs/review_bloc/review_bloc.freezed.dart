// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewEventTearOff {
  const _$ReviewEventTearOff();

  _Initialized initialized(Review? initialReviewOption) {
    return _Initialized(
      initialReviewOption,
    );
  }

  _ReviewBodyChanged reviewBodyChanged(String reviewBodyStr) {
    return _ReviewBodyChanged(
      reviewBodyStr,
    );
  }

  _ReviewStarChanged reviewStarChanged(int reviewStarInt) {
    return _ReviewStarChanged(
      reviewStarInt,
    );
  }

  _ReviewBtnPressed reviewBtnPressed() {
    return const _ReviewBtnPressed();
  }
}

/// @nodoc
const $ReviewEvent = _$ReviewEventTearOff();

/// @nodoc
mixin _$ReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption) initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(int reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption)? initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(int reviewStarInt)? reviewStarChanged,
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
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res> implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  final ReviewEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Review? initialReviewOption});

  $ReviewCopyWith<$Res>? get initialReviewOption;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ReviewEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialReviewOption = freezed,
  }) {
    return _then(_Initialized(
      initialReviewOption == freezed
          ? _value.initialReviewOption
          : initialReviewOption // ignore: cast_nullable_to_non_nullable
              as Review?,
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
  const _$_Initialized(this.initialReviewOption);

  @override
  final Review? initialReviewOption;

  @override
  String toString() {
    return 'ReviewEvent.initialized(initialReviewOption: $initialReviewOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialReviewOption, initialReviewOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialReviewOption, initialReviewOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialReviewOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Review? initialReviewOption) initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(int reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return initialized(initialReviewOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption)? initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(int reviewStarInt)? reviewStarChanged,
    TResult Function()? reviewBtnPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialReviewOption);
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

abstract class _Initialized implements ReviewEvent {
  const factory _Initialized(Review? initialReviewOption) = _$_Initialized;

  Review? get initialReviewOption => throw _privateConstructorUsedError;
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
    extends _$ReviewEventCopyWithImpl<$Res>
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
    return 'ReviewEvent.reviewBodyChanged(reviewBodyStr: $reviewBodyStr)';
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
    required TResult Function(Review? initialReviewOption) initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(int reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewBodyChanged(reviewBodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption)? initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(int reviewStarInt)? reviewStarChanged,
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

abstract class _ReviewBodyChanged implements ReviewEvent {
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
  $Res call({int reviewStarInt});
}

/// @nodoc
class __$ReviewStarChangedCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res>
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
              as int,
    ));
  }
}

/// @nodoc

class _$_ReviewStarChanged implements _ReviewStarChanged {
  const _$_ReviewStarChanged(this.reviewStarInt);

  @override
  final int reviewStarInt;

  @override
  String toString() {
    return 'ReviewEvent.reviewStarChanged(reviewStarInt: $reviewStarInt)';
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
    required TResult Function(Review? initialReviewOption) initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(int reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewStarChanged(reviewStarInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption)? initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(int reviewStarInt)? reviewStarChanged,
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

abstract class _ReviewStarChanged implements ReviewEvent {
  const factory _ReviewStarChanged(int reviewStarInt) = _$_ReviewStarChanged;

  int get reviewStarInt => throw _privateConstructorUsedError;
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
    extends _$ReviewEventCopyWithImpl<$Res>
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
    return 'ReviewEvent.reviewBtnPressed()';
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
    required TResult Function(Review? initialReviewOption) initialized,
    required TResult Function(String reviewBodyStr) reviewBodyChanged,
    required TResult Function(int reviewStarInt) reviewStarChanged,
    required TResult Function() reviewBtnPressed,
  }) {
    return reviewBtnPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Review? initialReviewOption)? initialized,
    TResult Function(String reviewBodyStr)? reviewBodyChanged,
    TResult Function(int reviewStarInt)? reviewStarChanged,
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

abstract class _ReviewBtnPressed implements ReviewEvent {
  const factory _ReviewBtnPressed() = _$_ReviewBtnPressed;
}

/// @nodoc
class _$ReviewStateTearOff {
  const _$ReviewStateTearOff();

  _ReviewState call(
      {required Review review,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Result<ReviewFailure, Unit>? reviewFailureOrSuccess}) {
    return _ReviewState(
      review: review,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      reviewFailureOrSuccess: reviewFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ReviewState = _$ReviewStateTearOff();

/// @nodoc
mixin _$ReviewState {
  Review get review => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Result<ReviewFailure, Unit>? get reviewFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewStateCopyWith<ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res>;
  $Res call(
      {Review review,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? reviewFailureOrSuccess});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res> implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  final ReviewState _value;
  // ignore: unused_field
  final $Res Function(ReviewState) _then;

  @override
  $Res call({
    Object? review = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccess = freezed,
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
abstract class _$ReviewStateCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory _$ReviewStateCopyWith(
          _ReviewState value, $Res Function(_ReviewState) then) =
      __$ReviewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Review review,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? reviewFailureOrSuccess});

  @override
  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class __$ReviewStateCopyWithImpl<$Res> extends _$ReviewStateCopyWithImpl<$Res>
    implements _$ReviewStateCopyWith<$Res> {
  __$ReviewStateCopyWithImpl(
      _ReviewState _value, $Res Function(_ReviewState) _then)
      : super(_value, (v) => _then(v as _ReviewState));

  @override
  _ReviewState get _value => super._value as _ReviewState;

  @override
  $Res call({
    Object? review = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccess = freezed,
  }) {
    return _then(_ReviewState(
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
    ));
  }
}

/// @nodoc

class _$_ReviewState implements _ReviewState {
  const _$_ReviewState(
      {required this.review,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.reviewFailureOrSuccess});

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
  String toString() {
    return 'ReviewState(review: $review, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, reviewFailureOrSuccess: $reviewFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewState &&
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
                    other.reviewFailureOrSuccess, reviewFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ReviewStateCopyWith<_ReviewState> get copyWith =>
      __$ReviewStateCopyWithImpl<_ReviewState>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
          {required Review review,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSubmitting,
          required Result<ReviewFailure, Unit>? reviewFailureOrSuccess}) =
      _$_ReviewState;

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
  @JsonKey(ignore: true)
  _$ReviewStateCopyWith<_ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
