// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestFormEventTearOff {
  const _$RequestFormEventTearOff();

  _Initialized initialized(Request? initialReviewOption, String userId,
      String accessToken, String userName, String pharmacyId, int days) {
    return _Initialized(
      initialReviewOption,
      userId,
      accessToken,
      userName,
      pharmacyId,
      days,
    );
  }

  _RequestNameChanged requestNameChanged(String requestNameStr) {
    return _RequestNameChanged(
      requestNameStr,
    );
  }

  _DaysChanged daysChanged(int daysint) {
    return _DaysChanged(
      daysint,
    );
  }

  _SubmitPressed submitPressed() {
    return const _SubmitPressed();
  }
}

/// @nodoc
const $RequestFormEvent = _$RequestFormEventTearOff();

/// @nodoc
mixin _$RequestFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)
        initialized,
    required TResult Function(String requestNameStr) requestNameChanged,
    required TResult Function(int daysint) daysChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)?
        initialized,
    TResult Function(String requestNameStr)? requestNameChanged,
    TResult Function(int daysint)? daysChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RequestNameChanged value) requestNameChanged,
    required TResult Function(_DaysChanged value) daysChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RequestNameChanged value)? requestNameChanged,
    TResult Function(_DaysChanged value)? daysChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFormEventCopyWith<$Res> {
  factory $RequestFormEventCopyWith(
          RequestFormEvent value, $Res Function(RequestFormEvent) then) =
      _$RequestFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFormEventCopyWithImpl<$Res>
    implements $RequestFormEventCopyWith<$Res> {
  _$RequestFormEventCopyWithImpl(this._value, this._then);

  final RequestFormEvent _value;
  // ignore: unused_field
  final $Res Function(RequestFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {Request? initialReviewOption,
      String userId,
      String accessToken,
      String userName,
      String pharmacyId,
      int days});

  $RequestCopyWith<$Res>? get initialReviewOption;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
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
    Object? pharmacyId = freezed,
    Object? days = freezed,
  }) {
    return _then(_Initialized(
      initialReviewOption == freezed
          ? _value.initialReviewOption
          : initialReviewOption // ignore: cast_nullable_to_non_nullable
              as Request?,
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
      pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
      days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $RequestCopyWith<$Res>? get initialReviewOption {
    if (_value.initialReviewOption == null) {
      return null;
    }

    return $RequestCopyWith<$Res>(_value.initialReviewOption!, (value) {
      return _then(_value.copyWith(initialReviewOption: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialReviewOption, this.userId, this.accessToken,
      this.userName, this.pharmacyId, this.days);

  @override
  final Request? initialReviewOption;
  @override
  final String userId;
  @override
  final String accessToken;
  @override
  final String userName;
  @override
  final String pharmacyId;
  @override
  final int days;

  @override
  String toString() {
    return 'RequestFormEvent.initialized(initialReviewOption: $initialReviewOption, userId: $userId, accessToken: $accessToken, userName: $userName, pharmacyId: $pharmacyId, days: $days)';
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
            (identical(other.pharmacyId, pharmacyId) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyId, pharmacyId)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialReviewOption) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(pharmacyId) ^
      const DeepCollectionEquality().hash(days);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)
        initialized,
    required TResult Function(String requestNameStr) requestNameChanged,
    required TResult Function(int daysint) daysChanged,
    required TResult Function() submitPressed,
  }) {
    return initialized(
        initialReviewOption, userId, accessToken, userName, pharmacyId, days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)?
        initialized,
    TResult Function(String requestNameStr)? requestNameChanged,
    TResult Function(int daysint)? daysChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          initialReviewOption, userId, accessToken, userName, pharmacyId, days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RequestNameChanged value) requestNameChanged,
    required TResult Function(_DaysChanged value) daysChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RequestNameChanged value)? requestNameChanged,
    TResult Function(_DaysChanged value)? daysChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RequestFormEvent {
  const factory _Initialized(
      Request? initialReviewOption,
      String userId,
      String accessToken,
      String userName,
      String pharmacyId,
      int days) = _$_Initialized;

  Request? get initialReviewOption => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestNameChangedCopyWith<$Res> {
  factory _$RequestNameChangedCopyWith(
          _RequestNameChanged value, $Res Function(_RequestNameChanged) then) =
      __$RequestNameChangedCopyWithImpl<$Res>;
  $Res call({String requestNameStr});
}

/// @nodoc
class __$RequestNameChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$RequestNameChangedCopyWith<$Res> {
  __$RequestNameChangedCopyWithImpl(
      _RequestNameChanged _value, $Res Function(_RequestNameChanged) _then)
      : super(_value, (v) => _then(v as _RequestNameChanged));

  @override
  _RequestNameChanged get _value => super._value as _RequestNameChanged;

  @override
  $Res call({
    Object? requestNameStr = freezed,
  }) {
    return _then(_RequestNameChanged(
      requestNameStr == freezed
          ? _value.requestNameStr
          : requestNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequestNameChanged implements _RequestNameChanged {
  const _$_RequestNameChanged(this.requestNameStr);

  @override
  final String requestNameStr;

  @override
  String toString() {
    return 'RequestFormEvent.requestNameChanged(requestNameStr: $requestNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestNameChanged &&
            (identical(other.requestNameStr, requestNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.requestNameStr, requestNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestNameStr);

  @JsonKey(ignore: true)
  @override
  _$RequestNameChangedCopyWith<_RequestNameChanged> get copyWith =>
      __$RequestNameChangedCopyWithImpl<_RequestNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)
        initialized,
    required TResult Function(String requestNameStr) requestNameChanged,
    required TResult Function(int daysint) daysChanged,
    required TResult Function() submitPressed,
  }) {
    return requestNameChanged(requestNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)?
        initialized,
    TResult Function(String requestNameStr)? requestNameChanged,
    TResult Function(int daysint)? daysChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (requestNameChanged != null) {
      return requestNameChanged(requestNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RequestNameChanged value) requestNameChanged,
    required TResult Function(_DaysChanged value) daysChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return requestNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RequestNameChanged value)? requestNameChanged,
    TResult Function(_DaysChanged value)? daysChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (requestNameChanged != null) {
      return requestNameChanged(this);
    }
    return orElse();
  }
}

abstract class _RequestNameChanged implements RequestFormEvent {
  const factory _RequestNameChanged(String requestNameStr) =
      _$_RequestNameChanged;

  String get requestNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestNameChangedCopyWith<_RequestNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DaysChangedCopyWith<$Res> {
  factory _$DaysChangedCopyWith(
          _DaysChanged value, $Res Function(_DaysChanged) then) =
      __$DaysChangedCopyWithImpl<$Res>;
  $Res call({int daysint});
}

/// @nodoc
class __$DaysChangedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$DaysChangedCopyWith<$Res> {
  __$DaysChangedCopyWithImpl(
      _DaysChanged _value, $Res Function(_DaysChanged) _then)
      : super(_value, (v) => _then(v as _DaysChanged));

  @override
  _DaysChanged get _value => super._value as _DaysChanged;

  @override
  $Res call({
    Object? daysint = freezed,
  }) {
    return _then(_DaysChanged(
      daysint == freezed
          ? _value.daysint
          : daysint // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DaysChanged implements _DaysChanged {
  const _$_DaysChanged(this.daysint);

  @override
  final int daysint;

  @override
  String toString() {
    return 'RequestFormEvent.daysChanged(daysint: $daysint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DaysChanged &&
            (identical(other.daysint, daysint) ||
                const DeepCollectionEquality().equals(other.daysint, daysint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(daysint);

  @JsonKey(ignore: true)
  @override
  _$DaysChangedCopyWith<_DaysChanged> get copyWith =>
      __$DaysChangedCopyWithImpl<_DaysChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)
        initialized,
    required TResult Function(String requestNameStr) requestNameChanged,
    required TResult Function(int daysint) daysChanged,
    required TResult Function() submitPressed,
  }) {
    return daysChanged(daysint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)?
        initialized,
    TResult Function(String requestNameStr)? requestNameChanged,
    TResult Function(int daysint)? daysChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (daysChanged != null) {
      return daysChanged(daysint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RequestNameChanged value) requestNameChanged,
    required TResult Function(_DaysChanged value) daysChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return daysChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RequestNameChanged value)? requestNameChanged,
    TResult Function(_DaysChanged value)? daysChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (daysChanged != null) {
      return daysChanged(this);
    }
    return orElse();
  }
}

abstract class _DaysChanged implements RequestFormEvent {
  const factory _DaysChanged(int daysint) = _$_DaysChanged;

  int get daysint => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DaysChangedCopyWith<_DaysChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitPressedCopyWith<$Res> {
  factory _$SubmitPressedCopyWith(
          _SubmitPressed value, $Res Function(_SubmitPressed) then) =
      __$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitPressedCopyWithImpl<$Res>
    extends _$RequestFormEventCopyWithImpl<$Res>
    implements _$SubmitPressedCopyWith<$Res> {
  __$SubmitPressedCopyWithImpl(
      _SubmitPressed _value, $Res Function(_SubmitPressed) _then)
      : super(_value, (v) => _then(v as _SubmitPressed));

  @override
  _SubmitPressed get _value => super._value as _SubmitPressed;
}

/// @nodoc

class _$_SubmitPressed implements _SubmitPressed {
  const _$_SubmitPressed();

  @override
  String toString() {
    return 'RequestFormEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)
        initialized,
    required TResult Function(String requestNameStr) requestNameChanged,
    required TResult Function(int daysint) daysChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Request? initialReviewOption, String userId,
            String accessToken, String userName, String pharmacyId, int days)?
        initialized,
    TResult Function(String requestNameStr)? requestNameChanged,
    TResult Function(int daysint)? daysChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RequestNameChanged value) requestNameChanged,
    required TResult Function(_DaysChanged value) daysChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RequestNameChanged value)? requestNameChanged,
    TResult Function(_DaysChanged value)? daysChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class _SubmitPressed implements RequestFormEvent {
  const factory _SubmitPressed() = _$_SubmitPressed;
}

/// @nodoc
class _$RequestFormStateTearOff {
  const _$RequestFormStateTearOff();

  _RequestFormState call(
      {required Request request,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Result<ReviewFailure, Unit>? requestFailureOrSuccess,
      required String accessToken,
      required String userId,
      required String userName,
      required int days}) {
    return _RequestFormState(
      request: request,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      requestFailureOrSuccess: requestFailureOrSuccess,
      accessToken: accessToken,
      userId: userId,
      userName: userName,
      days: days,
    );
  }
}

/// @nodoc
const $RequestFormState = _$RequestFormStateTearOff();

/// @nodoc
mixin _$RequestFormState {
  Request get request => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Result<ReviewFailure, Unit>? get requestFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestFormStateCopyWith<RequestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFormStateCopyWith<$Res> {
  factory $RequestFormStateCopyWith(
          RequestFormState value, $Res Function(RequestFormState) then) =
      _$RequestFormStateCopyWithImpl<$Res>;
  $Res call(
      {Request request,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? requestFailureOrSuccess,
      String accessToken,
      String userId,
      String userName,
      int days});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RequestFormStateCopyWithImpl<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  _$RequestFormStateCopyWithImpl(this._value, this._then);

  final RequestFormState _value;
  // ignore: unused_field
  final $Res Function(RequestFormState) _then;

  @override
  $Res call({
    Object? request = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? requestFailureOrSuccess = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
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
      requestFailureOrSuccess: requestFailureOrSuccess == freezed
          ? _value.requestFailureOrSuccess
          : requestFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$RequestFormStateCopyWith<$Res>
    implements $RequestFormStateCopyWith<$Res> {
  factory _$RequestFormStateCopyWith(
          _RequestFormState value, $Res Function(_RequestFormState) then) =
      __$RequestFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Request request,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Result<ReviewFailure, Unit>? requestFailureOrSuccess,
      String accessToken,
      String userId,
      String userName,
      int days});

  @override
  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class __$RequestFormStateCopyWithImpl<$Res>
    extends _$RequestFormStateCopyWithImpl<$Res>
    implements _$RequestFormStateCopyWith<$Res> {
  __$RequestFormStateCopyWithImpl(
      _RequestFormState _value, $Res Function(_RequestFormState) _then)
      : super(_value, (v) => _then(v as _RequestFormState));

  @override
  _RequestFormState get _value => super._value as _RequestFormState;

  @override
  $Res call({
    Object? request = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? requestFailureOrSuccess = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? days = freezed,
  }) {
    return _then(_RequestFormState(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
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
      requestFailureOrSuccess: requestFailureOrSuccess == freezed
          ? _value.requestFailureOrSuccess
          : requestFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestFormState implements _RequestFormState {
  const _$_RequestFormState(
      {required this.request,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.requestFailureOrSuccess,
      required this.accessToken,
      required this.userId,
      required this.userName,
      required this.days});

  @override
  final Request request;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Result<ReviewFailure, Unit>? requestFailureOrSuccess;
  @override
  final String accessToken;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final int days;

  @override
  String toString() {
    return 'RequestFormState(request: $request, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, requestFailureOrSuccess: $requestFailureOrSuccess, accessToken: $accessToken, userId: $userId, userName: $userName, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestFormState &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(
                    other.requestFailureOrSuccess, requestFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.requestFailureOrSuccess, requestFailureOrSuccess)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(requestFailureOrSuccess) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(days);

  @JsonKey(ignore: true)
  @override
  _$RequestFormStateCopyWith<_RequestFormState> get copyWith =>
      __$RequestFormStateCopyWithImpl<_RequestFormState>(this, _$identity);
}

abstract class _RequestFormState implements RequestFormState {
  const factory _RequestFormState(
      {required Request request,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Result<ReviewFailure, Unit>? requestFailureOrSuccess,
      required String accessToken,
      required String userId,
      required String userName,
      required int days}) = _$_RequestFormState;

  @override
  Request get request => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Result<ReviewFailure, Unit>? get requestFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  int get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestFormStateCopyWith<_RequestFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
