// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pharmacy_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PharmacySearchEventTearOff {
  const _$PharmacySearchEventTearOff();

  _SearchPharmacies searchPharmacies(String searchTerm, LatLng location) {
    return _SearchPharmacies(
      searchTerm,
      location,
    );
  }

  _PharmaciesReceived pharmaciesReceived(
      Result<SearchFailure, List<Pharmacy>> failureOrPharmacies) {
    return _PharmaciesReceived(
      failureOrPharmacies,
    );
  }
}

/// @nodoc
const $PharmacySearchEvent = _$PharmacySearchEventTearOff();

/// @nodoc
mixin _$PharmacySearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location)
        searchPharmacies,
    required TResult Function(
            Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)
        pharmaciesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? searchPharmacies,
    TResult Function(Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)?
        pharmaciesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPharmacies value) searchPharmacies,
    required TResult Function(_PharmaciesReceived value) pharmaciesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPharmacies value)? searchPharmacies,
    TResult Function(_PharmaciesReceived value)? pharmaciesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacySearchEventCopyWith<$Res> {
  factory $PharmacySearchEventCopyWith(
          PharmacySearchEvent value, $Res Function(PharmacySearchEvent) then) =
      _$PharmacySearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PharmacySearchEventCopyWithImpl<$Res>
    implements $PharmacySearchEventCopyWith<$Res> {
  _$PharmacySearchEventCopyWithImpl(this._value, this._then);

  final PharmacySearchEvent _value;
  // ignore: unused_field
  final $Res Function(PharmacySearchEvent) _then;
}

/// @nodoc
abstract class _$SearchPharmaciesCopyWith<$Res> {
  factory _$SearchPharmaciesCopyWith(
          _SearchPharmacies value, $Res Function(_SearchPharmacies) then) =
      __$SearchPharmaciesCopyWithImpl<$Res>;
  $Res call({String searchTerm, LatLng location});
}

/// @nodoc
class __$SearchPharmaciesCopyWithImpl<$Res>
    extends _$PharmacySearchEventCopyWithImpl<$Res>
    implements _$SearchPharmaciesCopyWith<$Res> {
  __$SearchPharmaciesCopyWithImpl(
      _SearchPharmacies _value, $Res Function(_SearchPharmacies) _then)
      : super(_value, (v) => _then(v as _SearchPharmacies));

  @override
  _SearchPharmacies get _value => super._value as _SearchPharmacies;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? location = freezed,
  }) {
    return _then(_SearchPharmacies(
      searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_SearchPharmacies implements _SearchPharmacies {
  const _$_SearchPharmacies(this.searchTerm, this.location);

  @override
  final String searchTerm;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'PharmacySearchEvent.searchPharmacies(searchTerm: $searchTerm, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPharmacies &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchTerm) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$SearchPharmaciesCopyWith<_SearchPharmacies> get copyWith =>
      __$SearchPharmaciesCopyWithImpl<_SearchPharmacies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location)
        searchPharmacies,
    required TResult Function(
            Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)
        pharmaciesReceived,
  }) {
    return searchPharmacies(searchTerm, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? searchPharmacies,
    TResult Function(Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)?
        pharmaciesReceived,
    required TResult orElse(),
  }) {
    if (searchPharmacies != null) {
      return searchPharmacies(searchTerm, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPharmacies value) searchPharmacies,
    required TResult Function(_PharmaciesReceived value) pharmaciesReceived,
  }) {
    return searchPharmacies(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPharmacies value)? searchPharmacies,
    TResult Function(_PharmaciesReceived value)? pharmaciesReceived,
    required TResult orElse(),
  }) {
    if (searchPharmacies != null) {
      return searchPharmacies(this);
    }
    return orElse();
  }
}

abstract class _SearchPharmacies implements PharmacySearchEvent {
  const factory _SearchPharmacies(String searchTerm, LatLng location) =
      _$_SearchPharmacies;

  String get searchTerm => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchPharmaciesCopyWith<_SearchPharmacies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PharmaciesReceivedCopyWith<$Res> {
  factory _$PharmaciesReceivedCopyWith(
          _PharmaciesReceived value, $Res Function(_PharmaciesReceived) then) =
      __$PharmaciesReceivedCopyWithImpl<$Res>;
  $Res call({Result<SearchFailure, List<Pharmacy>> failureOrPharmacies});
}

/// @nodoc
class __$PharmaciesReceivedCopyWithImpl<$Res>
    extends _$PharmacySearchEventCopyWithImpl<$Res>
    implements _$PharmaciesReceivedCopyWith<$Res> {
  __$PharmaciesReceivedCopyWithImpl(
      _PharmaciesReceived _value, $Res Function(_PharmaciesReceived) _then)
      : super(_value, (v) => _then(v as _PharmaciesReceived));

  @override
  _PharmaciesReceived get _value => super._value as _PharmaciesReceived;

  @override
  $Res call({
    Object? failureOrPharmacies = freezed,
  }) {
    return _then(_PharmaciesReceived(
      failureOrPharmacies == freezed
          ? _value.failureOrPharmacies
          : failureOrPharmacies // ignore: cast_nullable_to_non_nullable
              as Result<SearchFailure, List<Pharmacy>>,
    ));
  }
}

/// @nodoc

class _$_PharmaciesReceived implements _PharmaciesReceived {
  const _$_PharmaciesReceived(this.failureOrPharmacies);

  @override
  final Result<SearchFailure, List<Pharmacy>> failureOrPharmacies;

  @override
  String toString() {
    return 'PharmacySearchEvent.pharmaciesReceived(failureOrPharmacies: $failureOrPharmacies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PharmaciesReceived &&
            (identical(other.failureOrPharmacies, failureOrPharmacies) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPharmacies, failureOrPharmacies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPharmacies);

  @JsonKey(ignore: true)
  @override
  _$PharmaciesReceivedCopyWith<_PharmaciesReceived> get copyWith =>
      __$PharmaciesReceivedCopyWithImpl<_PharmaciesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location)
        searchPharmacies,
    required TResult Function(
            Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)
        pharmaciesReceived,
  }) {
    return pharmaciesReceived(failureOrPharmacies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? searchPharmacies,
    TResult Function(Result<SearchFailure, List<Pharmacy>> failureOrPharmacies)?
        pharmaciesReceived,
    required TResult orElse(),
  }) {
    if (pharmaciesReceived != null) {
      return pharmaciesReceived(failureOrPharmacies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPharmacies value) searchPharmacies,
    required TResult Function(_PharmaciesReceived value) pharmaciesReceived,
  }) {
    return pharmaciesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPharmacies value)? searchPharmacies,
    TResult Function(_PharmaciesReceived value)? pharmaciesReceived,
    required TResult orElse(),
  }) {
    if (pharmaciesReceived != null) {
      return pharmaciesReceived(this);
    }
    return orElse();
  }
}

abstract class _PharmaciesReceived implements PharmacySearchEvent {
  const factory _PharmaciesReceived(
          Result<SearchFailure, List<Pharmacy>> failureOrPharmacies) =
      _$_PharmaciesReceived;

  Result<SearchFailure, List<Pharmacy>> get failureOrPharmacies =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PharmaciesReceivedCopyWith<_PharmaciesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PharmacySearchStateTearOff {
  const _$PharmacySearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Pharmacy> pharmacies) {
    return _LoadSuccess(
      pharmacies,
    );
  }

  _LoadFailure loadFailure(SearchFailure searchFailure) {
    return _LoadFailure(
      searchFailure,
    );
  }
}

/// @nodoc
const $PharmacySearchState = _$PharmacySearchStateTearOff();

/// @nodoc
mixin _$PharmacySearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Pharmacy> pharmacies) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Pharmacy> pharmacies)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
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
abstract class $PharmacySearchStateCopyWith<$Res> {
  factory $PharmacySearchStateCopyWith(
          PharmacySearchState value, $Res Function(PharmacySearchState) then) =
      _$PharmacySearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PharmacySearchStateCopyWithImpl<$Res>
    implements $PharmacySearchStateCopyWith<$Res> {
  _$PharmacySearchStateCopyWithImpl(this._value, this._then);

  final PharmacySearchState _value;
  // ignore: unused_field
  final $Res Function(PharmacySearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PharmacySearchStateCopyWithImpl<$Res>
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
    return 'PharmacySearchState.initial()';
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
    required TResult Function(List<Pharmacy> pharmacies) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Pharmacy> pharmacies)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
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

abstract class _Initial implements PharmacySearchState {
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
    extends _$PharmacySearchStateCopyWithImpl<$Res>
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
    return 'PharmacySearchState.loadInProgress()';
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
    required TResult Function(List<Pharmacy> pharmacies) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Pharmacy> pharmacies)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
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

abstract class _LoadInProgress implements PharmacySearchState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Pharmacy> pharmacies});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PharmacySearchStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? pharmacies = freezed,
  }) {
    return _then(_LoadSuccess(
      pharmacies == freezed
          ? _value.pharmacies
          : pharmacies // ignore: cast_nullable_to_non_nullable
              as List<Pharmacy>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.pharmacies);

  @override
  final List<Pharmacy> pharmacies;

  @override
  String toString() {
    return 'PharmacySearchState.loadSuccess(pharmacies: $pharmacies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.pharmacies, pharmacies) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacies, pharmacies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pharmacies);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Pharmacy> pharmacies) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadSuccess(pharmacies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Pharmacy> pharmacies)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(pharmacies);
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

abstract class _LoadSuccess implements PharmacySearchState {
  const factory _LoadSuccess(List<Pharmacy> pharmacies) = _$_LoadSuccess;

  List<Pharmacy> get pharmacies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SearchFailure searchFailure});

  $SearchFailureCopyWith<$Res> get searchFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PharmacySearchStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? searchFailure = freezed,
  }) {
    return _then(_LoadFailure(
      searchFailure == freezed
          ? _value.searchFailure
          : searchFailure // ignore: cast_nullable_to_non_nullable
              as SearchFailure,
    ));
  }

  @override
  $SearchFailureCopyWith<$Res> get searchFailure {
    return $SearchFailureCopyWith<$Res>(_value.searchFailure, (value) {
      return _then(_value.copyWith(searchFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.searchFailure);

  @override
  final SearchFailure searchFailure;

  @override
  String toString() {
    return 'PharmacySearchState.loadFailure(searchFailure: $searchFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.searchFailure, searchFailure) ||
                const DeepCollectionEquality()
                    .equals(other.searchFailure, searchFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Pharmacy> pharmacies) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadFailure(searchFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Pharmacy> pharmacies)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(searchFailure);
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

abstract class _LoadFailure implements PharmacySearchState {
  const factory _LoadFailure(SearchFailure searchFailure) = _$_LoadFailure;

  SearchFailure get searchFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
