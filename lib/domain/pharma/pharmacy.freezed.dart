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
      required String pharmacyEmail,
      required double rating,
      required bool acceptsRequests,
      required List<String> drugNames,
      required List<String> imageUrls,
      required List<Map<String, dynamic>> location,
      required String locationDescription,
      List<Review>? reviews,
      List<String>? requests}) {
    return _Pharmacy(
      id: id,
      pharmacyName: pharmacyName,
      pharmacyEmail: pharmacyEmail,
      rating: rating,
      acceptsRequests: acceptsRequests,
      drugNames: drugNames,
      imageUrls: imageUrls,
      location: location,
      locationDescription: locationDescription,
      reviews: reviews,
      requests: requests,
    );
  }
}

/// @nodoc
const $Pharmacy = _$PharmacyTearOff();

/// @nodoc
mixin _$Pharmacy {
  String get id => throw _privateConstructorUsedError;
  String get pharmacyName => throw _privateConstructorUsedError;
  String get pharmacyEmail => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get acceptsRequests => throw _privateConstructorUsedError;
  List<String> get drugNames => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get location => throw _privateConstructorUsedError;
  String get locationDescription => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  List<String>? get requests => throw _privateConstructorUsedError;

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
      String pharmacyEmail,
      double rating,
      bool acceptsRequests,
      List<String> drugNames,
      List<String> imageUrls,
      List<Map<String, dynamic>> location,
      String locationDescription,
      List<Review>? reviews,
      List<String>? requests});
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
    Object? pharmacyEmail = freezed,
    Object? rating = freezed,
    Object? acceptsRequests = freezed,
    Object? drugNames = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
    Object? locationDescription = freezed,
    Object? reviews = freezed,
    Object? requests = freezed,
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
      pharmacyEmail: pharmacyEmail == freezed
          ? _value.pharmacyEmail
          : pharmacyEmail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      acceptsRequests: acceptsRequests == freezed
          ? _value.acceptsRequests
          : acceptsRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      drugNames: drugNames == freezed
          ? _value.drugNames
          : drugNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      locationDescription: locationDescription == freezed
          ? _value.locationDescription
          : locationDescription // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      requests: requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      String pharmacyEmail,
      double rating,
      bool acceptsRequests,
      List<String> drugNames,
      List<String> imageUrls,
      List<Map<String, dynamic>> location,
      String locationDescription,
      List<Review>? reviews,
      List<String>? requests});
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
    Object? pharmacyEmail = freezed,
    Object? rating = freezed,
    Object? acceptsRequests = freezed,
    Object? drugNames = freezed,
    Object? imageUrls = freezed,
    Object? location = freezed,
    Object? locationDescription = freezed,
    Object? reviews = freezed,
    Object? requests = freezed,
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
      pharmacyEmail: pharmacyEmail == freezed
          ? _value.pharmacyEmail
          : pharmacyEmail // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      acceptsRequests: acceptsRequests == freezed
          ? _value.acceptsRequests
          : acceptsRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      drugNames: drugNames == freezed
          ? _value.drugNames
          : drugNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      locationDescription: locationDescription == freezed
          ? _value.locationDescription
          : locationDescription // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      requests: requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_Pharmacy extends _Pharmacy {
  const _$_Pharmacy(
      {required this.id,
      required this.pharmacyName,
      required this.pharmacyEmail,
      required this.rating,
      required this.acceptsRequests,
      required this.drugNames,
      required this.imageUrls,
      required this.location,
      required this.locationDescription,
      this.reviews,
      this.requests})
      : super._();

  @override
  final String id;
  @override
  final String pharmacyName;
  @override
  final String pharmacyEmail;
  @override
  final double rating;
  @override
  final bool acceptsRequests;
  @override
  final List<String> drugNames;
  @override
  final List<String> imageUrls;
  @override
  final List<Map<String, dynamic>> location;
  @override
  final String locationDescription;
  @override
  final List<Review>? reviews;
  @override
  final List<String>? requests;

  @override
  String toString() {
    return 'Pharmacy(id: $id, pharmacyName: $pharmacyName, pharmacyEmail: $pharmacyEmail, rating: $rating, acceptsRequests: $acceptsRequests, drugNames: $drugNames, imageUrls: $imageUrls, location: $location, locationDescription: $locationDescription, reviews: $reviews, requests: $requests)';
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
            (identical(other.pharmacyEmail, pharmacyEmail) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyEmail, pharmacyEmail)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.acceptsRequests, acceptsRequests) ||
                const DeepCollectionEquality()
                    .equals(other.acceptsRequests, acceptsRequests)) &&
            (identical(other.drugNames, drugNames) ||
                const DeepCollectionEquality()
                    .equals(other.drugNames, drugNames)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.locationDescription, locationDescription) ||
                const DeepCollectionEquality()
                    .equals(other.locationDescription, locationDescription)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality()
                    .equals(other.reviews, reviews)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pharmacyName) ^
      const DeepCollectionEquality().hash(pharmacyEmail) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(acceptsRequests) ^
      const DeepCollectionEquality().hash(drugNames) ^
      const DeepCollectionEquality().hash(imageUrls) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(locationDescription) ^
      const DeepCollectionEquality().hash(reviews) ^
      const DeepCollectionEquality().hash(requests);

  @JsonKey(ignore: true)
  @override
  _$PharmacyCopyWith<_Pharmacy> get copyWith =>
      __$PharmacyCopyWithImpl<_Pharmacy>(this, _$identity);
}

abstract class _Pharmacy extends Pharmacy {
  const factory _Pharmacy(
      {required String id,
      required String pharmacyName,
      required String pharmacyEmail,
      required double rating,
      required bool acceptsRequests,
      required List<String> drugNames,
      required List<String> imageUrls,
      required List<Map<String, dynamic>> location,
      required String locationDescription,
      List<Review>? reviews,
      List<String>? requests}) = _$_Pharmacy;
  const _Pharmacy._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get pharmacyName => throw _privateConstructorUsedError;
  @override
  String get pharmacyEmail => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  bool get acceptsRequests => throw _privateConstructorUsedError;
  @override
  List<String> get drugNames => throw _privateConstructorUsedError;
  @override
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get location => throw _privateConstructorUsedError;
  @override
  String get locationDescription => throw _privateConstructorUsedError;
  @override
  List<Review>? get reviews => throw _privateConstructorUsedError;
  @override
  List<String>? get requests => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PharmacyCopyWith<_Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
