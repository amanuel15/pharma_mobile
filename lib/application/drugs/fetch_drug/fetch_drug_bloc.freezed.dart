// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fetch_drug_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchDrugEventTearOff {
  const _$FetchDrugEventTearOff();

  _FetchDrug fetchDrug(String drugId, String accessToken, String userId) {
    return _FetchDrug(
      drugId,
      accessToken,
      userId,
    );
  }

  _DrugReceived drugReceived(Result<PharmaFailure, Drug> failureOrDrug) {
    return _DrugReceived(
      failureOrDrug,
    );
  }
}

/// @nodoc
const $FetchDrugEvent = _$FetchDrugEventTearOff();

/// @nodoc
mixin _$FetchDrugEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, String userId)
        fetchDrug,
    required TResult Function(Result<PharmaFailure, Drug> failureOrDrug)
        drugReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, String userId)?
        fetchDrug,
    TResult Function(Result<PharmaFailure, Drug> failureOrDrug)? drugReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrug value) fetchDrug,
    required TResult Function(_DrugReceived value) drugReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrug value)? fetchDrug,
    TResult Function(_DrugReceived value)? drugReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDrugEventCopyWith<$Res> {
  factory $FetchDrugEventCopyWith(
          FetchDrugEvent value, $Res Function(FetchDrugEvent) then) =
      _$FetchDrugEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDrugEventCopyWithImpl<$Res>
    implements $FetchDrugEventCopyWith<$Res> {
  _$FetchDrugEventCopyWithImpl(this._value, this._then);

  final FetchDrugEvent _value;
  // ignore: unused_field
  final $Res Function(FetchDrugEvent) _then;
}

/// @nodoc
abstract class _$FetchDrugCopyWith<$Res> {
  factory _$FetchDrugCopyWith(
          _FetchDrug value, $Res Function(_FetchDrug) then) =
      __$FetchDrugCopyWithImpl<$Res>;
  $Res call({String drugId, String accessToken, String userId});
}

/// @nodoc
class __$FetchDrugCopyWithImpl<$Res> extends _$FetchDrugEventCopyWithImpl<$Res>
    implements _$FetchDrugCopyWith<$Res> {
  __$FetchDrugCopyWithImpl(_FetchDrug _value, $Res Function(_FetchDrug) _then)
      : super(_value, (v) => _then(v as _FetchDrug));

  @override
  _FetchDrug get _value => super._value as _FetchDrug;

  @override
  $Res call({
    Object? drugId = freezed,
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FetchDrug(
      drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
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

class _$_FetchDrug implements _FetchDrug {
  const _$_FetchDrug(this.drugId, this.accessToken, this.userId);

  @override
  final String drugId;
  @override
  final String accessToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'FetchDrugEvent.fetchDrug(drugId: $drugId, accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchDrug &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)) &&
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
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FetchDrugCopyWith<_FetchDrug> get copyWith =>
      __$FetchDrugCopyWithImpl<_FetchDrug>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, String userId)
        fetchDrug,
    required TResult Function(Result<PharmaFailure, Drug> failureOrDrug)
        drugReceived,
  }) {
    return fetchDrug(drugId, accessToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, String userId)?
        fetchDrug,
    TResult Function(Result<PharmaFailure, Drug> failureOrDrug)? drugReceived,
    required TResult orElse(),
  }) {
    if (fetchDrug != null) {
      return fetchDrug(drugId, accessToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrug value) fetchDrug,
    required TResult Function(_DrugReceived value) drugReceived,
  }) {
    return fetchDrug(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrug value)? fetchDrug,
    TResult Function(_DrugReceived value)? drugReceived,
    required TResult orElse(),
  }) {
    if (fetchDrug != null) {
      return fetchDrug(this);
    }
    return orElse();
  }
}

abstract class _FetchDrug implements FetchDrugEvent {
  const factory _FetchDrug(String drugId, String accessToken, String userId) =
      _$_FetchDrug;

  String get drugId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchDrugCopyWith<_FetchDrug> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DrugReceivedCopyWith<$Res> {
  factory _$DrugReceivedCopyWith(
          _DrugReceived value, $Res Function(_DrugReceived) then) =
      __$DrugReceivedCopyWithImpl<$Res>;
  $Res call({Result<PharmaFailure, Drug> failureOrDrug});
}

/// @nodoc
class __$DrugReceivedCopyWithImpl<$Res>
    extends _$FetchDrugEventCopyWithImpl<$Res>
    implements _$DrugReceivedCopyWith<$Res> {
  __$DrugReceivedCopyWithImpl(
      _DrugReceived _value, $Res Function(_DrugReceived) _then)
      : super(_value, (v) => _then(v as _DrugReceived));

  @override
  _DrugReceived get _value => super._value as _DrugReceived;

  @override
  $Res call({
    Object? failureOrDrug = freezed,
  }) {
    return _then(_DrugReceived(
      failureOrDrug == freezed
          ? _value.failureOrDrug
          : failureOrDrug // ignore: cast_nullable_to_non_nullable
              as Result<PharmaFailure, Drug>,
    ));
  }
}

/// @nodoc

class _$_DrugReceived implements _DrugReceived {
  const _$_DrugReceived(this.failureOrDrug);

  @override
  final Result<PharmaFailure, Drug> failureOrDrug;

  @override
  String toString() {
    return 'FetchDrugEvent.drugReceived(failureOrDrug: $failureOrDrug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DrugReceived &&
            (identical(other.failureOrDrug, failureOrDrug) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDrug, failureOrDrug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrDrug);

  @JsonKey(ignore: true)
  @override
  _$DrugReceivedCopyWith<_DrugReceived> get copyWith =>
      __$DrugReceivedCopyWithImpl<_DrugReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String drugId, String accessToken, String userId)
        fetchDrug,
    required TResult Function(Result<PharmaFailure, Drug> failureOrDrug)
        drugReceived,
  }) {
    return drugReceived(failureOrDrug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String drugId, String accessToken, String userId)?
        fetchDrug,
    TResult Function(Result<PharmaFailure, Drug> failureOrDrug)? drugReceived,
    required TResult orElse(),
  }) {
    if (drugReceived != null) {
      return drugReceived(failureOrDrug);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDrug value) fetchDrug,
    required TResult Function(_DrugReceived value) drugReceived,
  }) {
    return drugReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDrug value)? fetchDrug,
    TResult Function(_DrugReceived value)? drugReceived,
    required TResult orElse(),
  }) {
    if (drugReceived != null) {
      return drugReceived(this);
    }
    return orElse();
  }
}

abstract class _DrugReceived implements FetchDrugEvent {
  const factory _DrugReceived(Result<PharmaFailure, Drug> failureOrDrug) =
      _$_DrugReceived;

  Result<PharmaFailure, Drug> get failureOrDrug =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DrugReceivedCopyWith<_DrugReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FetchDrugStateTearOff {
  const _$FetchDrugStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Drug drug) {
    return _LoadSuccess(
      drug,
    );
  }

  _LoadFailure loadFailure(PharmaFailure pharmaFailure) {
    return _LoadFailure(
      pharmaFailure,
    );
  }
}

/// @nodoc
const $FetchDrugState = _$FetchDrugStateTearOff();

/// @nodoc
mixin _$FetchDrugState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Drug drug) loadSuccess,
    required TResult Function(PharmaFailure pharmaFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Drug drug)? loadSuccess,
    TResult Function(PharmaFailure pharmaFailure)? loadFailure,
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
abstract class $FetchDrugStateCopyWith<$Res> {
  factory $FetchDrugStateCopyWith(
          FetchDrugState value, $Res Function(FetchDrugState) then) =
      _$FetchDrugStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDrugStateCopyWithImpl<$Res>
    implements $FetchDrugStateCopyWith<$Res> {
  _$FetchDrugStateCopyWithImpl(this._value, this._then);

  final FetchDrugState _value;
  // ignore: unused_field
  final $Res Function(FetchDrugState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FetchDrugStateCopyWithImpl<$Res>
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
    return 'FetchDrugState.initial()';
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
    required TResult Function(Drug drug) loadSuccess,
    required TResult Function(PharmaFailure pharmaFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Drug drug)? loadSuccess,
    TResult Function(PharmaFailure pharmaFailure)? loadFailure,
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

abstract class _Initial implements FetchDrugState {
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
    extends _$FetchDrugStateCopyWithImpl<$Res>
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
    return 'FetchDrugState.loadInProgress()';
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
    required TResult Function(Drug drug) loadSuccess,
    required TResult Function(PharmaFailure pharmaFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Drug drug)? loadSuccess,
    TResult Function(PharmaFailure pharmaFailure)? loadFailure,
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

abstract class _LoadInProgress implements FetchDrugState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Drug drug});

  $DrugCopyWith<$Res> get drug;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FetchDrugStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? drug = freezed,
  }) {
    return _then(_LoadSuccess(
      drug == freezed
          ? _value.drug
          : drug // ignore: cast_nullable_to_non_nullable
              as Drug,
    ));
  }

  @override
  $DrugCopyWith<$Res> get drug {
    return $DrugCopyWith<$Res>(_value.drug, (value) {
      return _then(_value.copyWith(drug: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.drug);

  @override
  final Drug drug;

  @override
  String toString() {
    return 'FetchDrugState.loadSuccess(drug: $drug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.drug, drug) ||
                const DeepCollectionEquality().equals(other.drug, drug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drug);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Drug drug) loadSuccess,
    required TResult Function(PharmaFailure pharmaFailure) loadFailure,
  }) {
    return loadSuccess(drug);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Drug drug)? loadSuccess,
    TResult Function(PharmaFailure pharmaFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(drug);
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

abstract class _LoadSuccess implements FetchDrugState {
  const factory _LoadSuccess(Drug drug) = _$_LoadSuccess;

  Drug get drug => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PharmaFailure pharmaFailure});

  $PharmaFailureCopyWith<$Res> get pharmaFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FetchDrugStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? pharmaFailure = freezed,
  }) {
    return _then(_LoadFailure(
      pharmaFailure == freezed
          ? _value.pharmaFailure
          : pharmaFailure // ignore: cast_nullable_to_non_nullable
              as PharmaFailure,
    ));
  }

  @override
  $PharmaFailureCopyWith<$Res> get pharmaFailure {
    return $PharmaFailureCopyWith<$Res>(_value.pharmaFailure, (value) {
      return _then(_value.copyWith(pharmaFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.pharmaFailure);

  @override
  final PharmaFailure pharmaFailure;

  @override
  String toString() {
    return 'FetchDrugState.loadFailure(pharmaFailure: $pharmaFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.pharmaFailure, pharmaFailure) ||
                const DeepCollectionEquality()
                    .equals(other.pharmaFailure, pharmaFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pharmaFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Drug drug) loadSuccess,
    required TResult Function(PharmaFailure pharmaFailure) loadFailure,
  }) {
    return loadFailure(pharmaFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Drug drug)? loadSuccess,
    TResult Function(PharmaFailure pharmaFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(pharmaFailure);
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

abstract class _LoadFailure implements FetchDrugState {
  const factory _LoadFailure(PharmaFailure pharmaFailure) = _$_LoadFailure;

  PharmaFailure get pharmaFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
