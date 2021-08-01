// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pharmacy_locations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PharmacyLocationsStateTearOff {
  const _$PharmacyLocationsStateTearOff();

  _PharmacyLocationsState call({required Set<Marker> markers}) {
    return _PharmacyLocationsState(
      markers: markers,
    );
  }
}

/// @nodoc
const $PharmacyLocationsState = _$PharmacyLocationsStateTearOff();

/// @nodoc
mixin _$PharmacyLocationsState {
  Set<Marker> get markers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PharmacyLocationsStateCopyWith<PharmacyLocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyLocationsStateCopyWith<$Res> {
  factory $PharmacyLocationsStateCopyWith(PharmacyLocationsState value,
          $Res Function(PharmacyLocationsState) then) =
      _$PharmacyLocationsStateCopyWithImpl<$Res>;
  $Res call({Set<Marker> markers});
}

/// @nodoc
class _$PharmacyLocationsStateCopyWithImpl<$Res>
    implements $PharmacyLocationsStateCopyWith<$Res> {
  _$PharmacyLocationsStateCopyWithImpl(this._value, this._then);

  final PharmacyLocationsState _value;
  // ignore: unused_field
  final $Res Function(PharmacyLocationsState) _then;

  @override
  $Res call({
    Object? markers = freezed,
  }) {
    return _then(_value.copyWith(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc
abstract class _$PharmacyLocationsStateCopyWith<$Res>
    implements $PharmacyLocationsStateCopyWith<$Res> {
  factory _$PharmacyLocationsStateCopyWith(_PharmacyLocationsState value,
          $Res Function(_PharmacyLocationsState) then) =
      __$PharmacyLocationsStateCopyWithImpl<$Res>;
  @override
  $Res call({Set<Marker> markers});
}

/// @nodoc
class __$PharmacyLocationsStateCopyWithImpl<$Res>
    extends _$PharmacyLocationsStateCopyWithImpl<$Res>
    implements _$PharmacyLocationsStateCopyWith<$Res> {
  __$PharmacyLocationsStateCopyWithImpl(_PharmacyLocationsState _value,
      $Res Function(_PharmacyLocationsState) _then)
      : super(_value, (v) => _then(v as _PharmacyLocationsState));

  @override
  _PharmacyLocationsState get _value => super._value as _PharmacyLocationsState;

  @override
  $Res call({
    Object? markers = freezed,
  }) {
    return _then(_PharmacyLocationsState(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
    ));
  }
}

/// @nodoc

class _$_PharmacyLocationsState implements _PharmacyLocationsState {
  const _$_PharmacyLocationsState({required this.markers});

  @override
  final Set<Marker> markers;

  @override
  String toString() {
    return 'PharmacyLocationsState(markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PharmacyLocationsState &&
            (identical(other.markers, markers) ||
                const DeepCollectionEquality().equals(other.markers, markers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(markers);

  @JsonKey(ignore: true)
  @override
  _$PharmacyLocationsStateCopyWith<_PharmacyLocationsState> get copyWith =>
      __$PharmacyLocationsStateCopyWithImpl<_PharmacyLocationsState>(
          this, _$identity);
}

abstract class _PharmacyLocationsState implements PharmacyLocationsState {
  const factory _PharmacyLocationsState({required Set<Marker> markers}) =
      _$_PharmacyLocationsState;

  @override
  Set<Marker> get markers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PharmacyLocationsStateCopyWith<_PharmacyLocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
