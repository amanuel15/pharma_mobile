// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecommendationTearOff {
  const _$RecommendationTearOff();

  _Recommendation call(
      {required String id, required String name, required String brandName}) {
    return _Recommendation(
      id: id,
      name: name,
      brandName: brandName,
    );
  }
}

/// @nodoc
const $Recommendation = _$RecommendationTearOff();

/// @nodoc
mixin _$Recommendation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res>;
  $Res call({String id, String name, String brandName});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  final Recommendation _value;
  // ignore: unused_field
  final $Res Function(Recommendation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brandName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: brandName == freezed
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RecommendationCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(
          _Recommendation value, $Res Function(_Recommendation) then) =
      __$RecommendationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String brandName});
}

/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(
      _Recommendation _value, $Res Function(_Recommendation) _then)
      : super(_value, (v) => _then(v as _Recommendation));

  @override
  _Recommendation get _value => super._value as _Recommendation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brandName = freezed,
  }) {
    return _then(_Recommendation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: brandName == freezed
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Recommendation extends _Recommendation {
  const _$_Recommendation(
      {required this.id, required this.name, required this.brandName})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String brandName;

  @override
  String toString() {
    return 'Recommendation(id: $id, name: $name, brandName: $brandName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recommendation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(brandName);

  @JsonKey(ignore: true)
  @override
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);
}

abstract class _Recommendation extends Recommendation {
  const factory _Recommendation(
      {required String id,
      required String name,
      required String brandName}) = _$_Recommendation;
  const _Recommendation._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get brandName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}
