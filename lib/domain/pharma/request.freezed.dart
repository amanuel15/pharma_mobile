// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestTearOff {
  const _$RequestTearOff();

  _Request call(
      {required String id,
      required ReviewBody drugName,
      required int expiresInDays,
      required String userName,
      required String drugId,
      required String pharmacyId,
      required String creationDate,
      required int subscriberCount,
      required bool isAvailable,
      required bool declined}) {
    return _Request(
      id: id,
      drugName: drugName,
      expiresInDays: expiresInDays,
      userName: userName,
      drugId: drugId,
      pharmacyId: pharmacyId,
      creationDate: creationDate,
      subscriberCount: subscriberCount,
      isAvailable: isAvailable,
      declined: declined,
    );
  }
}

/// @nodoc
const $Request = _$RequestTearOff();

/// @nodoc
mixin _$Request {
  String get id =>
      throw _privateConstructorUsedError; // required String userId,
  ReviewBody get drugName => throw _privateConstructorUsedError;
  int get expiresInDays => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get drugId => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;
  int get subscriberCount => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get declined => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ReviewBody drugName,
      int expiresInDays,
      String userName,
      String drugId,
      String pharmacyId,
      String creationDate,
      int subscriberCount,
      bool isAvailable,
      bool declined});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? drugName = freezed,
    Object? expiresInDays = freezed,
    Object? userName = freezed,
    Object? drugId = freezed,
    Object? pharmacyId = freezed,
    Object? creationDate = freezed,
    Object? subscriberCount = freezed,
    Object? isAvailable = freezed,
    Object? declined = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      expiresInDays: expiresInDays == freezed
          ? _value.expiresInDays
          : expiresInDays // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      drugId: drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      declined: declined == freezed
          ? _value.declined
          : declined // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      ReviewBody drugName,
      int expiresInDays,
      String userName,
      String drugId,
      String pharmacyId,
      String creationDate,
      int subscriberCount,
      bool isAvailable,
      bool declined});
}

/// @nodoc
class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object? id = freezed,
    Object? drugName = freezed,
    Object? expiresInDays = freezed,
    Object? userName = freezed,
    Object? drugId = freezed,
    Object? pharmacyId = freezed,
    Object? creationDate = freezed,
    Object? subscriberCount = freezed,
    Object? isAvailable = freezed,
    Object? declined = freezed,
  }) {
    return _then(_Request(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      expiresInDays: expiresInDays == freezed
          ? _value.expiresInDays
          : expiresInDays // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      drugId: drugId == freezed
          ? _value.drugId
          : drugId // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      declined: declined == freezed
          ? _value.declined
          : declined // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Request extends _Request {
  const _$_Request(
      {required this.id,
      required this.drugName,
      required this.expiresInDays,
      required this.userName,
      required this.drugId,
      required this.pharmacyId,
      required this.creationDate,
      required this.subscriberCount,
      required this.isAvailable,
      required this.declined})
      : super._();

  @override
  final String id;
  @override // required String userId,
  final ReviewBody drugName;
  @override
  final int expiresInDays;
  @override
  final String userName;
  @override
  final String drugId;
  @override
  final String pharmacyId;
  @override
  final String creationDate;
  @override
  final int subscriberCount;
  @override
  final bool isAvailable;
  @override
  final bool declined;

  @override
  String toString() {
    return 'Request(id: $id, drugName: $drugName, expiresInDays: $expiresInDays, userName: $userName, drugId: $drugId, pharmacyId: $pharmacyId, creationDate: $creationDate, subscriberCount: $subscriberCount, isAvailable: $isAvailable, declined: $declined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.drugName, drugName) ||
                const DeepCollectionEquality()
                    .equals(other.drugName, drugName)) &&
            (identical(other.expiresInDays, expiresInDays) ||
                const DeepCollectionEquality()
                    .equals(other.expiresInDays, expiresInDays)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)) &&
            (identical(other.pharmacyId, pharmacyId) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyId, pharmacyId)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.subscriberCount, subscriberCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscriberCount, subscriberCount)) &&
            (identical(other.isAvailable, isAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isAvailable, isAvailable)) &&
            (identical(other.declined, declined) ||
                const DeepCollectionEquality()
                    .equals(other.declined, declined)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(drugName) ^
      const DeepCollectionEquality().hash(expiresInDays) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(drugId) ^
      const DeepCollectionEquality().hash(pharmacyId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(subscriberCount) ^
      const DeepCollectionEquality().hash(isAvailable) ^
      const DeepCollectionEquality().hash(declined);

  @JsonKey(ignore: true)
  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request extends Request {
  const factory _Request(
      {required String id,
      required ReviewBody drugName,
      required int expiresInDays,
      required String userName,
      required String drugId,
      required String pharmacyId,
      required String creationDate,
      required int subscriberCount,
      required bool isAvailable,
      required bool declined}) = _$_Request;
  const _Request._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override // required String userId,
  ReviewBody get drugName => throw _privateConstructorUsedError;
  @override
  int get expiresInDays => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get drugId => throw _privateConstructorUsedError;
  @override
  String get pharmacyId => throw _privateConstructorUsedError;
  @override
  String get creationDate => throw _privateConstructorUsedError;
  @override
  int get subscriberCount => throw _privateConstructorUsedError;
  @override
  bool get isAvailable => throw _privateConstructorUsedError;
  @override
  bool get declined => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestCopyWith<_Request> get copyWith =>
      throw _privateConstructorUsedError;
}
