// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchHistoryStateTearOff {
  const _$SearchHistoryStateTearOff();

  _SearchHistoryState call(
      {required List<Search> searches,
      required String typedTerm,
      required List<Search> filteredSearchHistory,
      required FloatingSearchBarController floatingSearchBarController,
      required String filterBy}) {
    return _SearchHistoryState(
      searches: searches,
      typedTerm: typedTerm,
      filteredSearchHistory: filteredSearchHistory,
      floatingSearchBarController: floatingSearchBarController,
      filterBy: filterBy,
    );
  }
}

/// @nodoc
const $SearchHistoryState = _$SearchHistoryStateTearOff();

/// @nodoc
mixin _$SearchHistoryState {
  List<Search> get searches => throw _privateConstructorUsedError;
  String get typedTerm => throw _privateConstructorUsedError;
  List<Search> get filteredSearchHistory => throw _privateConstructorUsedError;
  FloatingSearchBarController get floatingSearchBarController =>
      throw _privateConstructorUsedError;
  String get filterBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHistoryStateCopyWith<SearchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryStateCopyWith<$Res> {
  factory $SearchHistoryStateCopyWith(
          SearchHistoryState value, $Res Function(SearchHistoryState) then) =
      _$SearchHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Search> searches,
      String typedTerm,
      List<Search> filteredSearchHistory,
      FloatingSearchBarController floatingSearchBarController,
      String filterBy});
}

/// @nodoc
class _$SearchHistoryStateCopyWithImpl<$Res>
    implements $SearchHistoryStateCopyWith<$Res> {
  _$SearchHistoryStateCopyWithImpl(this._value, this._then);

  final SearchHistoryState _value;
  // ignore: unused_field
  final $Res Function(SearchHistoryState) _then;

  @override
  $Res call({
    Object? searches = freezed,
    Object? typedTerm = freezed,
    Object? filteredSearchHistory = freezed,
    Object? floatingSearchBarController = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_value.copyWith(
      searches: searches == freezed
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      typedTerm: typedTerm == freezed
          ? _value.typedTerm
          : typedTerm // ignore: cast_nullable_to_non_nullable
              as String,
      filteredSearchHistory: filteredSearchHistory == freezed
          ? _value.filteredSearchHistory
          : filteredSearchHistory // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      floatingSearchBarController: floatingSearchBarController == freezed
          ? _value.floatingSearchBarController
          : floatingSearchBarController // ignore: cast_nullable_to_non_nullable
              as FloatingSearchBarController,
      filterBy: filterBy == freezed
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchHistoryStateCopyWith<$Res>
    implements $SearchHistoryStateCopyWith<$Res> {
  factory _$SearchHistoryStateCopyWith(
          _SearchHistoryState value, $Res Function(_SearchHistoryState) then) =
      __$SearchHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Search> searches,
      String typedTerm,
      List<Search> filteredSearchHistory,
      FloatingSearchBarController floatingSearchBarController,
      String filterBy});
}

/// @nodoc
class __$SearchHistoryStateCopyWithImpl<$Res>
    extends _$SearchHistoryStateCopyWithImpl<$Res>
    implements _$SearchHistoryStateCopyWith<$Res> {
  __$SearchHistoryStateCopyWithImpl(
      _SearchHistoryState _value, $Res Function(_SearchHistoryState) _then)
      : super(_value, (v) => _then(v as _SearchHistoryState));

  @override
  _SearchHistoryState get _value => super._value as _SearchHistoryState;

  @override
  $Res call({
    Object? searches = freezed,
    Object? typedTerm = freezed,
    Object? filteredSearchHistory = freezed,
    Object? floatingSearchBarController = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_SearchHistoryState(
      searches: searches == freezed
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      typedTerm: typedTerm == freezed
          ? _value.typedTerm
          : typedTerm // ignore: cast_nullable_to_non_nullable
              as String,
      filteredSearchHistory: filteredSearchHistory == freezed
          ? _value.filteredSearchHistory
          : filteredSearchHistory // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      floatingSearchBarController: floatingSearchBarController == freezed
          ? _value.floatingSearchBarController
          : floatingSearchBarController // ignore: cast_nullable_to_non_nullable
              as FloatingSearchBarController,
      filterBy: filterBy == freezed
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchHistoryState implements _SearchHistoryState {
  const _$_SearchHistoryState(
      {required this.searches,
      required this.typedTerm,
      required this.filteredSearchHistory,
      required this.floatingSearchBarController,
      required this.filterBy});

  @override
  final List<Search> searches;
  @override
  final String typedTerm;
  @override
  final List<Search> filteredSearchHistory;
  @override
  final FloatingSearchBarController floatingSearchBarController;
  @override
  final String filterBy;

  @override
  String toString() {
    return 'SearchHistoryState(searches: $searches, typedTerm: $typedTerm, filteredSearchHistory: $filteredSearchHistory, floatingSearchBarController: $floatingSearchBarController, filterBy: $filterBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchHistoryState &&
            (identical(other.searches, searches) ||
                const DeepCollectionEquality()
                    .equals(other.searches, searches)) &&
            (identical(other.typedTerm, typedTerm) ||
                const DeepCollectionEquality()
                    .equals(other.typedTerm, typedTerm)) &&
            (identical(other.filteredSearchHistory, filteredSearchHistory) ||
                const DeepCollectionEquality().equals(
                    other.filteredSearchHistory, filteredSearchHistory)) &&
            (identical(other.floatingSearchBarController,
                    floatingSearchBarController) ||
                const DeepCollectionEquality().equals(
                    other.floatingSearchBarController,
                    floatingSearchBarController)) &&
            (identical(other.filterBy, filterBy) ||
                const DeepCollectionEquality()
                    .equals(other.filterBy, filterBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searches) ^
      const DeepCollectionEquality().hash(typedTerm) ^
      const DeepCollectionEquality().hash(filteredSearchHistory) ^
      const DeepCollectionEquality().hash(floatingSearchBarController) ^
      const DeepCollectionEquality().hash(filterBy);

  @JsonKey(ignore: true)
  @override
  _$SearchHistoryStateCopyWith<_SearchHistoryState> get copyWith =>
      __$SearchHistoryStateCopyWithImpl<_SearchHistoryState>(this, _$identity);
}

abstract class _SearchHistoryState implements SearchHistoryState {
  const factory _SearchHistoryState(
      {required List<Search> searches,
      required String typedTerm,
      required List<Search> filteredSearchHistory,
      required FloatingSearchBarController floatingSearchBarController,
      required String filterBy}) = _$_SearchHistoryState;

  @override
  List<Search> get searches => throw _privateConstructorUsedError;
  @override
  String get typedTerm => throw _privateConstructorUsedError;
  @override
  List<Search> get filteredSearchHistory => throw _privateConstructorUsedError;
  @override
  FloatingSearchBarController get floatingSearchBarController =>
      throw _privateConstructorUsedError;
  @override
  String get filterBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchHistoryStateCopyWith<_SearchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
