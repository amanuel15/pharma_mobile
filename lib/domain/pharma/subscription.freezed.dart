// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      {required String drugName,
      String? id,
      required String userId,
      required String drugId,
      required String pharmacyId,
      required String creationDate,
      String? editDate}) {
    return _Subscription(
      drugName: drugName,
      id: id,
      userId: userId,
      drugId: drugId,
      pharmacyId: pharmacyId,
      creationDate: creationDate,
      editDate: editDate,
    );
  }
}

/// @nodoc
const $Subscription = _$SubscriptionTearOff();

/// @nodoc
mixin _$Subscription {
  String get drugName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get drugId => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;
  String get creationDate => throw _privateConstructorUsedError;
  String? get editDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res>;
  $Res call(
      {String drugName,
      String? id,
      String userId,
      String drugId,
      String pharmacyId,
      String creationDate,
      String? editDate});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? drugName = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? drugId = freezed,
    Object? pharmacyId = freezed,
    Object? creationDate = freezed,
    Object? editDate = freezed,
  }) {
    return _then(_value.copyWith(
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      editDate: editDate == freezed
          ? _value.editDate
          : editDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String drugName,
      String? id,
      String userId,
      String drugId,
      String pharmacyId,
      String creationDate,
      String? editDate});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;

  @override
  $Res call({
    Object? drugName = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? drugId = freezed,
    Object? pharmacyId = freezed,
    Object? creationDate = freezed,
    Object? editDate = freezed,
  }) {
    return _then(_Subscription(
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      editDate: editDate == freezed
          ? _value.editDate
          : editDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Subscription extends _Subscription {
  const _$_Subscription(
      {required this.drugName,
      this.id,
      required this.userId,
      required this.drugId,
      required this.pharmacyId,
      required this.creationDate,
      this.editDate})
      : super._();

  @override
  final String drugName;
  @override
  final String? id;
  @override
  final String userId;
  @override
  final String drugId;
  @override
  final String pharmacyId;
  @override
  final String creationDate;
  @override
  final String? editDate;

  @override
  String toString() {
    return 'Subscription(drugName: $drugName, id: $id, userId: $userId, drugId: $drugId, pharmacyId: $pharmacyId, creationDate: $creationDate, editDate: $editDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscription &&
            (identical(other.drugName, drugName) ||
                const DeepCollectionEquality()
                    .equals(other.drugName, drugName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.drugId, drugId) ||
                const DeepCollectionEquality().equals(other.drugId, drugId)) &&
            (identical(other.pharmacyId, pharmacyId) ||
                const DeepCollectionEquality()
                    .equals(other.pharmacyId, pharmacyId)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.editDate, editDate) ||
                const DeepCollectionEquality()
                    .equals(other.editDate, editDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(drugName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(drugId) ^
      const DeepCollectionEquality().hash(pharmacyId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(editDate);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);
}

abstract class _Subscription extends Subscription {
  const factory _Subscription(
      {required String drugName,
      String? id,
      required String userId,
      required String drugId,
      required String pharmacyId,
      required String creationDate,
      String? editDate}) = _$_Subscription;
  const _Subscription._() : super._();

  @override
  String get drugName => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get drugId => throw _privateConstructorUsedError;
  @override
  String get pharmacyId => throw _privateConstructorUsedError;
  @override
  String get creationDate => throw _privateConstructorUsedError;
  @override
  String? get editDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}
