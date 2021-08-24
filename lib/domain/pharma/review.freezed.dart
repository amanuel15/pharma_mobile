// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {required String id,
      required String userId,
      required ReviewBody reviewBody,
      required String userName,
      required ReviewStar reviewStar,
      required String drugId}) {
    return _Review(
      id: id,
      userId: userId,
      reviewBody: reviewBody,
      userName: userName,
      reviewStar: reviewStar,
      drugId: drugId,
    );
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  ReviewBody get reviewBody => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  ReviewStar get reviewStar => throw _privateConstructorUsedError;
  String get drugId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      ReviewBody reviewBody,
      String userName,
      ReviewStar reviewStar,
      String drugId});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? reviewBody = freezed,
    Object? userName = freezed,
    Object? reviewStar = freezed,
    Object? drugId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewStar: reviewStar == freezed
          ? _value.reviewStar
          : reviewStar // ignore: cast_nullable_to_non_nullable
              as ReviewStar,
      drugId: drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      ReviewBody reviewBody,
      String userName,
      ReviewStar reviewStar,
      String drugId});
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? reviewBody = freezed,
    Object? userName = freezed,
    Object? reviewStar = freezed,
    Object? drugId = freezed,
  }) {
    return _then(_Review(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewStar: reviewStar == freezed
          ? _value.reviewStar
          : reviewStar // ignore: cast_nullable_to_non_nullable
              as ReviewStar,
      drugId: drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Review extends _Review {
  const _$_Review(
      {required this.id,
      required this.userId,
      required this.reviewBody,
      required this.userName,
      required this.reviewStar,
      required this.drugId})
      : super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final ReviewBody reviewBody;
  @override
  final String userName;
  @override
  final ReviewStar reviewStar;
  @override
  final String drugId;

  @override
  String toString() {
    return 'Review(id: $id, userId: $userId, reviewBody: $reviewBody, userName: $userName, reviewStar: $reviewStar, drugId: $drugId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.reviewBody, reviewBody) ||
                const DeepCollectionEquality()
                    .equals(other.reviewBody, reviewBody)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.reviewStar, reviewStar) ||
                const DeepCollectionEquality()
                    .equals(other.reviewStar, reviewStar)) &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(reviewBody) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(reviewStar) ^
      const DeepCollectionEquality().hash(drugId);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required String id,
      required String userId,
      required ReviewBody reviewBody,
      required String userName,
      required ReviewStar reviewStar,
      required String drugId}) = _$_Review;
  const _Review._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  ReviewBody get reviewBody => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  ReviewStar get reviewStar => throw _privateConstructorUsedError;
  @override
  String get drugId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}
