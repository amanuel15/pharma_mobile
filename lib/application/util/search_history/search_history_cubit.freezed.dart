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
      {required List<String> searches, required String typedTerm}) {
    return _SearchHistoryState(
      searches: searches,
      typedTerm: typedTerm,
    );
  }
}

/// @nodoc
const $SearchHistoryState = _$SearchHistoryStateTearOff();

/// @nodoc
mixin _$SearchHistoryState {
  List<String> get searches => throw _privateConstructorUsedError;
  String get typedTerm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHistoryStateCopyWith<SearchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryStateCopyWith<$Res> {
  factory $SearchHistoryStateCopyWith(
          SearchHistoryState value, $Res Function(SearchHistoryState) then) =
      _$SearchHistoryStateCopyWithImpl<$Res>;
  $Res call({List<String> searches, String typedTerm});
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
  }) {
    return _then(_value.copyWith(
      searches: searches == freezed
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typedTerm: typedTerm == freezed
          ? _value.typedTerm
          : typedTerm // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<String> searches, String typedTerm});
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
  }) {
    return _then(_SearchHistoryState(
      searches: searches == freezed
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      typedTerm: typedTerm == freezed
          ? _value.typedTerm
          : typedTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchHistoryState implements _SearchHistoryState {
  const _$_SearchHistoryState(
      {required this.searches, required this.typedTerm});

  @override
  final List<String> searches;
  @override
  final String typedTerm;

  @override
  String toString() {
    return 'SearchHistoryState(searches: $searches, typedTerm: $typedTerm)';
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
                    .equals(other.typedTerm, typedTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searches) ^
      const DeepCollectionEquality().hash(typedTerm);

  @JsonKey(ignore: true)
  @override
  _$SearchHistoryStateCopyWith<_SearchHistoryState> get copyWith =>
      __$SearchHistoryStateCopyWithImpl<_SearchHistoryState>(this, _$identity);
}

abstract class _SearchHistoryState implements SearchHistoryState {
  const factory _SearchHistoryState(
      {required List<String> searches,
      required String typedTerm}) = _$_SearchHistoryState;

  @override
  List<String> get searches => throw _privateConstructorUsedError;
  @override
  String get typedTerm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchHistoryStateCopyWith<_SearchHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
