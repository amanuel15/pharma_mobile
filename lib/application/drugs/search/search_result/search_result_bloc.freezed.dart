// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchResultEventTearOff {
  const _$SearchResultEventTearOff();

  _SearchDrugs searchDrugs(String searchTerm) {
    return _SearchDrugs(
      searchTerm,
    );
  }

  _DrugsReceived drugsReceived(
      Result<SearchFailure, List<Drug>> failureOrDrugs) {
    return _DrugsReceived(
      failureOrDrugs,
    );
  }
}

/// @nodoc
const $SearchResultEvent = _$SearchResultEventTearOff();

/// @nodoc
mixin _$SearchResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) searchDrugs,
    required TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)
        drugsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? searchDrugs,
    TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)?
        drugsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDrugs value) searchDrugs,
    required TResult Function(_DrugsReceived value) drugsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDrugs value)? searchDrugs,
    TResult Function(_DrugsReceived value)? drugsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res> {
  factory $SearchResultEventCopyWith(
          SearchResultEvent value, $Res Function(SearchResultEvent) then) =
      _$SearchResultEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res>
    implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  final SearchResultEvent _value;
  // ignore: unused_field
  final $Res Function(SearchResultEvent) _then;
}

/// @nodoc
abstract class _$SearchDrugsCopyWith<$Res> {
  factory _$SearchDrugsCopyWith(
          _SearchDrugs value, $Res Function(_SearchDrugs) then) =
      __$SearchDrugsCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class __$SearchDrugsCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res>
    implements _$SearchDrugsCopyWith<$Res> {
  __$SearchDrugsCopyWithImpl(
      _SearchDrugs _value, $Res Function(_SearchDrugs) _then)
      : super(_value, (v) => _then(v as _SearchDrugs));

  @override
  _SearchDrugs get _value => super._value as _SearchDrugs;

  @override
  $Res call({
    Object? searchTerm = freezed,
  }) {
    return _then(_SearchDrugs(
      searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchDrugs implements _SearchDrugs {
  const _$_SearchDrugs(this.searchTerm);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'SearchResultEvent.searchDrugs(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDrugs &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @JsonKey(ignore: true)
  @override
  _$SearchDrugsCopyWith<_SearchDrugs> get copyWith =>
      __$SearchDrugsCopyWithImpl<_SearchDrugs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) searchDrugs,
    required TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)
        drugsReceived,
  }) {
    return searchDrugs(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? searchDrugs,
    TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)?
        drugsReceived,
    required TResult orElse(),
  }) {
    if (searchDrugs != null) {
      return searchDrugs(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDrugs value) searchDrugs,
    required TResult Function(_DrugsReceived value) drugsReceived,
  }) {
    return searchDrugs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDrugs value)? searchDrugs,
    TResult Function(_DrugsReceived value)? drugsReceived,
    required TResult orElse(),
  }) {
    if (searchDrugs != null) {
      return searchDrugs(this);
    }
    return orElse();
  }
}

abstract class _SearchDrugs implements SearchResultEvent {
  const factory _SearchDrugs(String searchTerm) = _$_SearchDrugs;

  String get searchTerm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchDrugsCopyWith<_SearchDrugs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DrugsReceivedCopyWith<$Res> {
  factory _$DrugsReceivedCopyWith(
          _DrugsReceived value, $Res Function(_DrugsReceived) then) =
      __$DrugsReceivedCopyWithImpl<$Res>;
  $Res call({Result<SearchFailure, List<Drug>> failureOrDrugs});
}

/// @nodoc
class __$DrugsReceivedCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res>
    implements _$DrugsReceivedCopyWith<$Res> {
  __$DrugsReceivedCopyWithImpl(
      _DrugsReceived _value, $Res Function(_DrugsReceived) _then)
      : super(_value, (v) => _then(v as _DrugsReceived));

  @override
  _DrugsReceived get _value => super._value as _DrugsReceived;

  @override
  $Res call({
    Object? failureOrDrugs = freezed,
  }) {
    return _then(_DrugsReceived(
      failureOrDrugs == freezed
          ? _value.failureOrDrugs
          : failureOrDrugs // ignore: cast_nullable_to_non_nullable
              as Result<SearchFailure, List<Drug>>,
    ));
  }
}

/// @nodoc

class _$_DrugsReceived implements _DrugsReceived {
  const _$_DrugsReceived(this.failureOrDrugs);

  @override
  final Result<SearchFailure, List<Drug>> failureOrDrugs;

  @override
  String toString() {
    return 'SearchResultEvent.drugsReceived(failureOrDrugs: $failureOrDrugs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DrugsReceived &&
            (identical(other.failureOrDrugs, failureOrDrugs) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDrugs, failureOrDrugs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrDrugs);

  @JsonKey(ignore: true)
  @override
  _$DrugsReceivedCopyWith<_DrugsReceived> get copyWith =>
      __$DrugsReceivedCopyWithImpl<_DrugsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) searchDrugs,
    required TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)
        drugsReceived,
  }) {
    return drugsReceived(failureOrDrugs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? searchDrugs,
    TResult Function(Result<SearchFailure, List<Drug>> failureOrDrugs)?
        drugsReceived,
    required TResult orElse(),
  }) {
    if (drugsReceived != null) {
      return drugsReceived(failureOrDrugs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchDrugs value) searchDrugs,
    required TResult Function(_DrugsReceived value) drugsReceived,
  }) {
    return drugsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchDrugs value)? searchDrugs,
    TResult Function(_DrugsReceived value)? drugsReceived,
    required TResult orElse(),
  }) {
    if (drugsReceived != null) {
      return drugsReceived(this);
    }
    return orElse();
  }
}

abstract class _DrugsReceived implements SearchResultEvent {
  const factory _DrugsReceived(
      Result<SearchFailure, List<Drug>> failureOrDrugs) = _$_DrugsReceived;

  Result<SearchFailure, List<Drug>> get failureOrDrugs =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DrugsReceivedCopyWith<_DrugsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchResultStateTearOff {
  const _$SearchResultStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Drug> drugs) {
    return _LoadSuccess(
      drugs,
    );
  }

  _LoadFailure loadFailure(SearchFailure searchFailure) {
    return _LoadFailure(
      searchFailure,
    );
  }
}

/// @nodoc
const $SearchResultState = _$SearchResultStateTearOff();

/// @nodoc
mixin _$SearchResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Drug> drugs) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Drug> drugs)? loadSuccess,
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
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  final SearchResultState _value;
  // ignore: unused_field
  final $Res Function(SearchResultState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchResultStateCopyWithImpl<$Res>
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
    return 'SearchResultState.initial()';
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
    required TResult Function(List<Drug> drugs) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Drug> drugs)? loadSuccess,
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

abstract class _Initial implements SearchResultState {
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
    extends _$SearchResultStateCopyWithImpl<$Res>
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
    return 'SearchResultState.loadInProgress()';
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
    required TResult Function(List<Drug> drugs) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Drug> drugs)? loadSuccess,
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

abstract class _LoadInProgress implements SearchResultState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Drug> drugs});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? drugs = freezed,
  }) {
    return _then(_LoadSuccess(
      drugs == freezed
          ? _value.drugs
          : drugs // ignore: cast_nullable_to_non_nullable
              as List<Drug>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.drugs);

  @override
  final List<Drug> drugs;

  @override
  String toString() {
    return 'SearchResultState.loadSuccess(drugs: $drugs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.drugs, drugs) ||
                const DeepCollectionEquality().equals(other.drugs, drugs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drugs);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Drug> drugs) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadSuccess(drugs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Drug> drugs)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(drugs);
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

abstract class _LoadSuccess implements SearchResultState {
  const factory _LoadSuccess(List<Drug> drugs) = _$_LoadSuccess;

  List<Drug> get drugs => throw _privateConstructorUsedError;
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
    extends _$SearchResultStateCopyWithImpl<$Res>
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
    return 'SearchResultState.loadFailure(searchFailure: $searchFailure)';
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
    required TResult Function(List<Drug> drugs) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadFailure(searchFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Drug> drugs)? loadSuccess,
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

abstract class _LoadFailure implements SearchResultState {
  const factory _LoadFailure(SearchFailure searchFailure) = _$_LoadFailure;

  SearchFailure get searchFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
