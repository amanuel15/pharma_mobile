part of 'location_cubit.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.locationLoaded(LatLng coords) = _LocationLoaded;
}
