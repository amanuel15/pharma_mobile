// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fetch_drug_pharmacy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchDrugPharmacyEventTearOff {
  const _$FetchDrugPharmacyEventTearOff();

  _FetchPharmacy fetchPharmacy(String pharmacyId) {
    return _FetchPharmacy(
      pharmacyId,
    );
  }

  _PharmacyReceived pharmacyReceived(
      Result<ReviewFailure, Pharmacy> failureOrPharmacy) {
    return _PharmacyReceived(
      failureOrPharmacy,
    );
  }
}

/// @nodoc
const $FetchDrugPharmacyEvent = _$FetchDrugPharmacyEventTearOff();

/// @nodoc
mixin _$FetchDrugPharmacyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId) fetchPharmacy,
    required TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)
        pharmacyReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId)? fetchPharmacy,
    TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)?
        pharmacyReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacy value) fetchPharmacy,
    required TResult Function(_PharmacyReceived value) pharmacyReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacy value)? fetchPharmacy,
    TResult Function(_PharmacyReceived value)? pharmacyReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDrugPharmacyEventCopyWith<$Res> {
  factory $FetchDrugPharmacyEventCopyWith(FetchDrugPharmacyEvent value,
          $Res Function(FetchDrugPharmacyEvent) then) =
      _$FetchDrugPharmacyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDrugPharmacyEventCopyWithImpl<$Res>
    implements $FetchDrugPharmacyEventCopyWith<$Res> {
  _$FetchDrugPharmacyEventCopyWithImpl(this._value, this._then);

  final FetchDrugPharmacyEvent _value;
  // ignore: unused_field
  final $Res Function(FetchDrugPharmacyEvent) _then;
}

/// @nodoc
abstract class _$FetchPharmacyCopyWith<$Res> {
  factory _$FetchPharmacyCopyWith(
          _FetchPharmacy value, $Res Function(_FetchPharmacy) then) =
      __$FetchPharmacyCopyWithImpl<$Res>;
  $Res call({String pharmacyId});
}

/// @nodoc
class __$FetchPharmacyCopyWithImpl<$Res>
    extends _$FetchDrugPharmacyEventCopyWithImpl<$Res>
    implements _$FetchPharmacyCopyWith<$Res> {
  __$FetchPharmacyCopyWithImpl(
      _FetchPharmacy _value, $Res Function(_FetchPharmacy) _then)
      : super(_value, (v) => _then(v as _FetchPharmacy));

  @override
  _FetchPharmacy get _value => super._value as _FetchPharmacy;

  @override
  $Res call({
    Object? pharmacyId = freezed,
  }) {
    return _then(_FetchPharmacy(
      pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchPharmacy implements _FetchPharmacy {
  const _$_FetchPharmacy(this.pharmacyId);

  @override
  final String pharmacyId;

  @override
  String toString() {
    return 'FetchDrugPharmacyEvent.fetchPharmacy(pharmacyId: $pharmacyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchPharmacy &&
            (identical(other.pharmacyId, pharmacyId) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyId, pharmacyId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pharmacyId);

  @JsonKey(ignore: true)
  @override
  _$FetchPharmacyCopyWith<_FetchPharmacy> get copyWith =>
      __$FetchPharmacyCopyWithImpl<_FetchPharmacy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId) fetchPharmacy,
    required TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)
        pharmacyReceived,
  }) {
    return fetchPharmacy(pharmacyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId)? fetchPharmacy,
    TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)?
        pharmacyReceived,
    required TResult orElse(),
  }) {
    if (fetchPharmacy != null) {
      return fetchPharmacy(pharmacyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacy value) fetchPharmacy,
    required TResult Function(_PharmacyReceived value) pharmacyReceived,
  }) {
    return fetchPharmacy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacy value)? fetchPharmacy,
    TResult Function(_PharmacyReceived value)? pharmacyReceived,
    required TResult orElse(),
  }) {
    if (fetchPharmacy != null) {
      return fetchPharmacy(this);
    }
    return orElse();
  }
}

abstract class _FetchPharmacy implements FetchDrugPharmacyEvent {
  const factory _FetchPharmacy(String pharmacyId) = _$_FetchPharmacy;

  String get pharmacyId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchPharmacyCopyWith<_FetchPharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PharmacyReceivedCopyWith<$Res> {
  factory _$PharmacyReceivedCopyWith(
          _PharmacyReceived value, $Res Function(_PharmacyReceived) then) =
      __$PharmacyReceivedCopyWithImpl<$Res>;
  $Res call({Result<ReviewFailure, Pharmacy> failureOrPharmacy});
}

/// @nodoc
class __$PharmacyReceivedCopyWithImpl<$Res>
    extends _$FetchDrugPharmacyEventCopyWithImpl<$Res>
    implements _$PharmacyReceivedCopyWith<$Res> {
  __$PharmacyReceivedCopyWithImpl(
      _PharmacyReceived _value, $Res Function(_PharmacyReceived) _then)
      : super(_value, (v) => _then(v as _PharmacyReceived));

  @override
  _PharmacyReceived get _value => super._value as _PharmacyReceived;

  @override
  $Res call({
    Object? failureOrPharmacy = freezed,
  }) {
    return _then(_PharmacyReceived(
      failureOrPharmacy == freezed
          ? _value.failureOrPharmacy
          : failureOrPharmacy // ignore: cast_nullable_to_non_nullable
              as Result<ReviewFailure, Pharmacy>,
    ));
  }
}

/// @nodoc

class _$_PharmacyReceived implements _PharmacyReceived {
  const _$_PharmacyReceived(this.failureOrPharmacy);

  @override
  final Result<ReviewFailure, Pharmacy> failureOrPharmacy;

  @override
  String toString() {
    return 'FetchDrugPharmacyEvent.pharmacyReceived(failureOrPharmacy: $failureOrPharmacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PharmacyReceived &&
            (identical(other.failureOrPharmacy, failureOrPharmacy) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPharmacy, failureOrPharmacy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPharmacy);

  @JsonKey(ignore: true)
  @override
  _$PharmacyReceivedCopyWith<_PharmacyReceived> get copyWith =>
      __$PharmacyReceivedCopyWithImpl<_PharmacyReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pharmacyId) fetchPharmacy,
    required TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)
        pharmacyReceived,
  }) {
    return pharmacyReceived(failureOrPharmacy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pharmacyId)? fetchPharmacy,
    TResult Function(Result<ReviewFailure, Pharmacy> failureOrPharmacy)?
        pharmacyReceived,
    required TResult orElse(),
  }) {
    if (pharmacyReceived != null) {
      return pharmacyReceived(failureOrPharmacy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPharmacy value) fetchPharmacy,
    required TResult Function(_PharmacyReceived value) pharmacyReceived,
  }) {
    return pharmacyReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPharmacy value)? fetchPharmacy,
    TResult Function(_PharmacyReceived value)? pharmacyReceived,
    required TResult orElse(),
  }) {
    if (pharmacyReceived != null) {
      return pharmacyReceived(this);
    }
    return orElse();
  }
}

abstract class _PharmacyReceived implements FetchDrugPharmacyEvent {
  const factory _PharmacyReceived(
      Result<ReviewFailure, Pharmacy> failureOrPharmacy) = _$_PharmacyReceived;

  Result<ReviewFailure, Pharmacy> get failureOrPharmacy =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PharmacyReceivedCopyWith<_PharmacyReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FetchDrugPharmacyStateTearOff {
  const _$FetchDrugPharmacyStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadSuccess loadSuccess(Pharmacy pharmacy) {
    return _LoadSuccess(
      pharmacy,
    );
  }

  _LoadFailure loadFailure(ReviewFailure pharmacyFailure) {
    return _LoadFailure(
      pharmacyFailure,
    );
  }
}

/// @nodoc
const $FetchDrugPharmacyState = _$FetchDrugPharmacyStateTearOff();

/// @nodoc
mixin _$FetchDrugPharmacyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Pharmacy pharmacy) loadSuccess,
    required TResult Function(ReviewFailure pharmacyFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Pharmacy pharmacy)? loadSuccess,
    TResult Function(ReviewFailure pharmacyFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDrugPharmacyStateCopyWith<$Res> {
  factory $FetchDrugPharmacyStateCopyWith(FetchDrugPharmacyState value,
          $Res Function(FetchDrugPharmacyState) then) =
      _$FetchDrugPharmacyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDrugPharmacyStateCopyWithImpl<$Res>
    implements $FetchDrugPharmacyStateCopyWith<$Res> {
  _$FetchDrugPharmacyStateCopyWithImpl(this._value, this._then);

  final FetchDrugPharmacyState _value;
  // ignore: unused_field
  final $Res Function(FetchDrugPharmacyState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FetchDrugPharmacyStateCopyWithImpl<$Res>
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
    return 'FetchDrugPharmacyState.initial()';
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
    required TResult Function(Pharmacy pharmacy) loadSuccess,
    required TResult Function(ReviewFailure pharmacyFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Pharmacy pharmacy)? loadSuccess,
    TResult Function(ReviewFailure pharmacyFailure)? loadFailure,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Initial implements FetchDrugPharmacyState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Pharmacy pharmacy});

  $PharmacyCopyWith<$Res> get pharmacy;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FetchDrugPharmacyStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? pharmacy = freezed,
  }) {
    return _then(_LoadSuccess(
      pharmacy == freezed
          ? _value.pharmacy
          : pharmacy // ignore: cast_nullable_to_non_nullable
              as Pharmacy,
    ));
  }

  @override
  $PharmacyCopyWith<$Res> get pharmacy {
    return $PharmacyCopyWith<$Res>(_value.pharmacy, (value) {
      return _then(_value.copyWith(pharmacy: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.pharmacy);

  @override
  final Pharmacy pharmacy;

  @override
  String toString() {
    return 'FetchDrugPharmacyState.loadSuccess(pharmacy: $pharmacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.pharmacy, pharmacy) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacy, pharmacy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pharmacy);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Pharmacy pharmacy) loadSuccess,
    required TResult Function(ReviewFailure pharmacyFailure) loadFailure,
  }) {
    return loadSuccess(pharmacy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Pharmacy pharmacy)? loadSuccess,
    TResult Function(ReviewFailure pharmacyFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(pharmacy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _LoadSuccess implements FetchDrugPharmacyState {
  const factory _LoadSuccess(Pharmacy pharmacy) = _$_LoadSuccess;

  Pharmacy get pharmacy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure pharmacyFailure});

  $ReviewFailureCopyWith<$Res> get pharmacyFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FetchDrugPharmacyStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? pharmacyFailure = freezed,
  }) {
    return _then(_LoadFailure(
      pharmacyFailure == freezed
          ? _value.pharmacyFailure
          : pharmacyFailure // ignore: cast_nullable_to_non_nullable
              as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get pharmacyFailure {
    return $ReviewFailureCopyWith<$Res>(_value.pharmacyFailure, (value) {
      return _then(_value.copyWith(pharmacyFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.pharmacyFailure);

  @override
  final ReviewFailure pharmacyFailure;

  @override
  String toString() {
    return 'FetchDrugPharmacyState.loadFailure(pharmacyFailure: $pharmacyFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.pharmacyFailure, pharmacyFailure) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyFailure, pharmacyFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pharmacyFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Pharmacy pharmacy) loadSuccess,
    required TResult Function(ReviewFailure pharmacyFailure) loadFailure,
  }) {
    return loadFailure(pharmacyFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Pharmacy pharmacy)? loadSuccess,
    TResult Function(ReviewFailure pharmacyFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(pharmacyFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _LoadFailure implements FetchDrugPharmacyState {
  const factory _LoadFailure(ReviewFailure pharmacyFailure) = _$_LoadFailure;

  ReviewFailure get pharmacyFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
