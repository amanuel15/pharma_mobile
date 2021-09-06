// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _Search search(String searchTerm, LatLng location) {
    return _Search(
      searchTerm,
      location,
    );
  }

  _RecommendationsReceived recommendationsReceived(
      Result<SearchFailure, List<Recommendation>> failureOrRecommendation) {
    return _RecommendationsReceived(
      failureOrRecommendation,
    );
  }

  _ClearSearch clearSearch() {
    return const _ClearSearch();
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location) search,
    required TResult Function(
            Result<SearchFailure, List<Recommendation>> failureOrRecommendation)
        recommendationsReceived,
    required TResult Function() clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? search,
    TResult Function(
            Result<SearchFailure, List<Recommendation>>
                failureOrRecommendation)?
        recommendationsReceived,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
    required TResult Function(_ClearSearch value) clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String searchTerm, LatLng location});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? location = freezed,
  }) {
    return _then(_Search(
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

class _$_Search implements _Search {
  const _$_Search(this.searchTerm, this.location);

  @override
  final String searchTerm;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'SearchEvent.search(searchTerm: $searchTerm, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
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
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location) search,
    required TResult Function(
            Result<SearchFailure, List<Recommendation>> failureOrRecommendation)
        recommendationsReceived,
    required TResult Function() clearSearch,
  }) {
    return search(searchTerm, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? search,
    TResult Function(
            Result<SearchFailure, List<Recommendation>>
                failureOrRecommendation)?
        recommendationsReceived,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchTerm, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(String searchTerm, LatLng location) = _$_Search;

  String get searchTerm => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecommendationsReceivedCopyWith<$Res> {
  factory _$RecommendationsReceivedCopyWith(_RecommendationsReceived value,
          $Res Function(_RecommendationsReceived) then) =
      __$RecommendationsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Result<SearchFailure, List<Recommendation>> failureOrRecommendation});
}

/// @nodoc
class __$RecommendationsReceivedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$RecommendationsReceivedCopyWith<$Res> {
  __$RecommendationsReceivedCopyWithImpl(_RecommendationsReceived _value,
      $Res Function(_RecommendationsReceived) _then)
      : super(_value, (v) => _then(v as _RecommendationsReceived));

  @override
  _RecommendationsReceived get _value =>
      super._value as _RecommendationsReceived;

  @override
  $Res call({
    Object? failureOrRecommendation = freezed,
  }) {
    return _then(_RecommendationsReceived(
      failureOrRecommendation == freezed
          ? _value.failureOrRecommendation
          : failureOrRecommendation // ignore: cast_nullable_to_non_nullable
              as Result<SearchFailure, List<Recommendation>>,
    ));
  }
}

/// @nodoc

class _$_RecommendationsReceived implements _RecommendationsReceived {
  const _$_RecommendationsReceived(this.failureOrRecommendation);

  @override
  final Result<SearchFailure, List<Recommendation>> failureOrRecommendation;

  @override
  String toString() {
    return 'SearchEvent.recommendationsReceived(failureOrRecommendation: $failureOrRecommendation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecommendationsReceived &&
            (identical(
                    other.failureOrRecommendation, failureOrRecommendation) ||
                const DeepCollectionEquality().equals(
                    other.failureOrRecommendation, failureOrRecommendation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRecommendation);

  @JsonKey(ignore: true)
  @override
  _$RecommendationsReceivedCopyWith<_RecommendationsReceived> get copyWith =>
      __$RecommendationsReceivedCopyWithImpl<_RecommendationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location) search,
    required TResult Function(
            Result<SearchFailure, List<Recommendation>> failureOrRecommendation)
        recommendationsReceived,
    required TResult Function() clearSearch,
  }) {
    return recommendationsReceived(failureOrRecommendation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? search,
    TResult Function(
            Result<SearchFailure, List<Recommendation>>
                failureOrRecommendation)?
        recommendationsReceived,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (recommendationsReceived != null) {
      return recommendationsReceived(failureOrRecommendation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return recommendationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (recommendationsReceived != null) {
      return recommendationsReceived(this);
    }
    return orElse();
  }
}

abstract class _RecommendationsReceived implements SearchEvent {
  const factory _RecommendationsReceived(
          Result<SearchFailure, List<Recommendation>> failureOrRecommendation) =
      _$_RecommendationsReceived;

  Result<SearchFailure, List<Recommendation>> get failureOrRecommendation =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RecommendationsReceivedCopyWith<_RecommendationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearSearchCopyWith<$Res> {
  factory _$ClearSearchCopyWith(
          _ClearSearch value, $Res Function(_ClearSearch) then) =
      __$ClearSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$ClearSearchCopyWith<$Res> {
  __$ClearSearchCopyWithImpl(
      _ClearSearch _value, $Res Function(_ClearSearch) _then)
      : super(_value, (v) => _then(v as _ClearSearch));

  @override
  _ClearSearch get _value => super._value as _ClearSearch;
}

/// @nodoc

class _$_ClearSearch implements _ClearSearch {
  const _$_ClearSearch();

  @override
  String toString() {
    return 'SearchEvent.clearSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm, LatLng location) search,
    required TResult Function(
            Result<SearchFailure, List<Recommendation>> failureOrRecommendation)
        recommendationsReceived,
    required TResult Function() clearSearch,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm, LatLng location)? search,
    TResult Function(
            Result<SearchFailure, List<Recommendation>>
                failureOrRecommendation)?
        recommendationsReceived,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
    required TResult Function(_ClearSearch value) clearSearch,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    TResult Function(_ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class _ClearSearch implements SearchEvent {
  const factory _ClearSearch() = _$_ClearSearch;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Recommendation> recommendations) {
    return _LoadSuccess(
      recommendations,
    );
  }

  _LoadFailure loadFailure(SearchFailure searchFailure) {
    return _LoadFailure(
      searchFailure,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Recommendation> recommendations) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Recommendation> recommendations)? loadSuccess,
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
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.initial()';
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
    required TResult Function(List<Recommendation> recommendations) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Recommendation> recommendations)? loadSuccess,
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

abstract class _Initial implements SearchState {
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
    extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.loadInProgress()';
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
    required TResult Function(List<Recommendation> recommendations) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Recommendation> recommendations)? loadSuccess,
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

abstract class _LoadInProgress implements SearchState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Recommendation> recommendations});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? recommendations = freezed,
  }) {
    return _then(_LoadSuccess(
      recommendations == freezed
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Recommendation>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.recommendations);

  @override
  final List<Recommendation> recommendations;

  @override
  String toString() {
    return 'SearchState.loadSuccess(recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.recommendations, recommendations) ||
                const DeepCollectionEquality()
                    .equals(other.recommendations, recommendations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recommendations);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Recommendation> recommendations) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadSuccess(recommendations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Recommendation> recommendations)? loadSuccess,
    TResult Function(SearchFailure searchFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recommendations);
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

abstract class _LoadSuccess implements SearchState {
  const factory _LoadSuccess(List<Recommendation> recommendations) =
      _$_LoadSuccess;

  List<Recommendation> get recommendations =>
      throw _privateConstructorUsedError;
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
class __$LoadFailureCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.loadFailure(searchFailure: $searchFailure)';
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
    required TResult Function(List<Recommendation> recommendations) loadSuccess,
    required TResult Function(SearchFailure searchFailure) loadFailure,
  }) {
    return loadFailure(searchFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Recommendation> recommendations)? loadSuccess,
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

abstract class _LoadFailure implements SearchState {
  const factory _LoadFailure(SearchFailure searchFailure) = _$_LoadFailure;

  SearchFailure get searchFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
