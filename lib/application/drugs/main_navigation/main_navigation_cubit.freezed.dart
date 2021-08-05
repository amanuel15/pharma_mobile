// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainNavigationStateTearOff {
  const _$MainNavigationStateTearOff();

  _MainNavigationState call({required int index}) {
    return _MainNavigationState(
      index: index,
    );
  }
}

/// @nodoc
const $MainNavigationState = _$MainNavigationStateTearOff();

/// @nodoc
mixin _$MainNavigationState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigationStateCopyWith<MainNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigationStateCopyWith<$Res> {
  factory $MainNavigationStateCopyWith(
          MainNavigationState value, $Res Function(MainNavigationState) then) =
      _$MainNavigationStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$MainNavigationStateCopyWithImpl<$Res>
    implements $MainNavigationStateCopyWith<$Res> {
  _$MainNavigationStateCopyWithImpl(this._value, this._then);

  final MainNavigationState _value;
  // ignore: unused_field
  final $Res Function(MainNavigationState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MainNavigationStateCopyWith<$Res>
    implements $MainNavigationStateCopyWith<$Res> {
  factory _$MainNavigationStateCopyWith(_MainNavigationState value,
          $Res Function(_MainNavigationState) then) =
      __$MainNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$MainNavigationStateCopyWithImpl<$Res>
    extends _$MainNavigationStateCopyWithImpl<$Res>
    implements _$MainNavigationStateCopyWith<$Res> {
  __$MainNavigationStateCopyWithImpl(
      _MainNavigationState _value, $Res Function(_MainNavigationState) _then)
      : super(_value, (v) => _then(v as _MainNavigationState));

  @override
  _MainNavigationState get _value => super._value as _MainNavigationState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_MainNavigationState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainNavigationState implements _MainNavigationState {
  const _$_MainNavigationState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MainNavigationState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainNavigationState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$MainNavigationStateCopyWith<_MainNavigationState> get copyWith =>
      __$MainNavigationStateCopyWithImpl<_MainNavigationState>(
          this, _$identity);
}

abstract class _MainNavigationState implements MainNavigationState {
  const factory _MainNavigationState({required int index}) =
      _$_MainNavigationState;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainNavigationStateCopyWith<_MainNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
