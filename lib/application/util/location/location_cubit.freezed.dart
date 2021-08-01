// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LocationLoaded locationLoaded(LatLng coords) {
    return _LocationLoaded(
      coords,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng coords) locationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng coords)? locationLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationLoaded value) locationLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationLoaded value)? locationLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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
    return 'LocationState.initial()';
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
    required TResult Function(LatLng coords) locationLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng coords)? locationLoaded,
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
    required TResult Function(_LocationLoaded value) locationLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationLoaded value)? locationLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LocationLoadedCopyWith<$Res> {
  factory _$LocationLoadedCopyWith(
          _LocationLoaded value, $Res Function(_LocationLoaded) then) =
      __$LocationLoadedCopyWithImpl<$Res>;
  $Res call({LatLng coords});
}

/// @nodoc
class __$LocationLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationLoadedCopyWith<$Res> {
  __$LocationLoadedCopyWithImpl(
      _LocationLoaded _value, $Res Function(_LocationLoaded) _then)
      : super(_value, (v) => _then(v as _LocationLoaded));

  @override
  _LocationLoaded get _value => super._value as _LocationLoaded;

  @override
  $Res call({
    Object? coords = freezed,
  }) {
    return _then(_LocationLoaded(
      coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationLoaded implements _LocationLoaded {
  const _$_LocationLoaded(this.coords);

  @override
  final LatLng coords;

  @override
  String toString() {
    return 'LocationState.locationLoaded(coords: $coords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationLoaded &&
            (identical(other.coords, coords) ||
                const DeepCollectionEquality().equals(other.coords, coords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coords);

  @JsonKey(ignore: true)
  @override
  _$LocationLoadedCopyWith<_LocationLoaded> get copyWith =>
      __$LocationLoadedCopyWithImpl<_LocationLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng coords) locationLoaded,
  }) {
    return locationLoaded(coords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng coords)? locationLoaded,
    required TResult orElse(),
  }) {
    if (locationLoaded != null) {
      return locationLoaded(coords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationLoaded value) locationLoaded,
  }) {
    return locationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationLoaded value)? locationLoaded,
    required TResult orElse(),
  }) {
    if (locationLoaded != null) {
      return locationLoaded(this);
    }
    return orElse();
  }
}

abstract class _LocationLoaded implements LocationState {
  const factory _LocationLoaded(LatLng coords) = _$_LocationLoaded;

  LatLng get coords => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationLoadedCopyWith<_LocationLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
