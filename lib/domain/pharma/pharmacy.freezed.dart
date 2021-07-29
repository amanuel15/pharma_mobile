// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pharmacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PharmacyTearOff {
  const _$PharmacyTearOff();

  _Pharmacy call(
      {required String id,
      required String pharmacyName,
      required String pharmacyDetail,
      required double rating,
      required List<String> imageUrls,
      required List<Map<String, dynamic>> location}) {
    return _Pharmacy(
      id: id,
      pharmacyName: pharmacyName,
      pharmacyDetail: pharmacyDetail,
      rating: rating,
      imageUrls: imageUrls,
      location: location,
    );
  }
}

/// @nodoc
const $Pharmacy = _$PharmacyTearOff();

/// @nodoc
mixin _$Pharmacy {
  String get id => throw _privateConstructorUsedError;
  String get pharmacyName => throw _privateConstructorUsedError;
  String get pharmacyDetail => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PharmacyCopyWith<Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyCopyWith<$Res> {
  factory $PharmacyCopyWith(Pharmacy value, $Res Function(Pharmacy) then) =
      _$PharmacyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String pharmacyName,
      String pharmacyDetail,
      double rating,
      List<String> imageUrls,
      List<Map<String, dynamic>> location});
}

/// @nodoc
class _$PharmacyCopyWithImpl<$Res> implements $PharmacyCopyWith<$Res> {
  _$PharmacyCopyWithImpl(this._value, this._then);

  final Pharmacy _value;
  // ignore: unused_field
  final $Res Function(Pharmacy) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pharmacyName = freezed,
    Object? pharmacyDetail = freezed,
    Object? rating = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyName: pharmacyName == freezed
          ? _value.pharmacyName
          : pharmacyName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyDetail: pharmacyDetail == freezed
          ? _value.pharmacyDetail
          : pharmacyDetail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$PharmacyCopyWith<$Res> implements $PharmacyCopyWith<$Res> {
  factory _$PharmacyCopyWith(_Pharmacy value, $Res Function(_Pharmacy) then) =
      __$PharmacyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String pharmacyName,
      String pharmacyDetail,
      double rating,
      List<String> imageUrls,
      List<Map<String, dynamic>> location});
}

/// @nodoc
class __$PharmacyCopyWithImpl<$Res> extends _$PharmacyCopyWithImpl<$Res>
    implements _$PharmacyCopyWith<$Res> {
  __$PharmacyCopyWithImpl(_Pharmacy _value, $Res Function(_Pharmacy) _then)
      : super(_value, (v) => _then(v as _Pharmacy));

  @override
  _Pharmacy get _value => super._value as _Pharmacy;

  @override
  $Res call({
    Object? id = freezed,
    Object? pharmacyName = freezed,
    Object? pharmacyDetail = freezed,
    Object? rating = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
  }) {
    return _then(_Pharmacy(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyName: pharmacyName == freezed
          ? _value.pharmacyName
          : pharmacyName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyDetail: pharmacyDetail == freezed
          ? _value.pharmacyDetail
          : pharmacyDetail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_Pharmacy extends _Pharmacy {
  const _$_Pharmacy(
      {required this.id,
      required this.pharmacyName,
      required this.pharmacyDetail,
      required this.rating,
      required this.imageUrls,
      required this.location})
      : super._();

  @override
  final String id;
  @override
  final String pharmacyName;
  @override
  final String pharmacyDetail;
  @override
  final double rating;
  @override
  final List<String> imageUrls;
  @override
  final List<Map<String, dynamic>> location;

  @override
  String toString() {
    return 'Pharmacy(id: $id, pharmacyName: $pharmacyName, pharmacyDetail: $pharmacyDetail, rating: $rating, imageUrls: $imageUrls, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pharmacy &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pharmacyName, pharmacyName) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyName, pharmacyName)) &&
            (identical(other.pharmacyDetail, pharmacyDetail) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyDetail, pharmacyDetail)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pharmacyName) ^
      const DeepCollectionEquality().hash(pharmacyDetail) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(imageUrls) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$PharmacyCopyWith<_Pharmacy> get copyWith =>
      __$PharmacyCopyWithImpl<_Pharmacy>(this, _$identity);
}

abstract class _Pharmacy extends Pharmacy {
  const factory _Pharmacy(
      {required String id,
      required String pharmacyName,
      required String pharmacyDetail,
      required double rating,
      required List<String> imageUrls,
      required List<Map<String, dynamic>> location}) = _$_Pharmacy;
  const _Pharmacy._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get pharmacyName => throw _privateConstructorUsedError;
  @override
  String get pharmacyDetail => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PharmacyCopyWith<_Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
