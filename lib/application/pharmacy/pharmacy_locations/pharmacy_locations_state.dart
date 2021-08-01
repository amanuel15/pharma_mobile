part of 'pharmacy_locations_cubit.dart';

@freezed
abstract class PharmacyLocationsState with _$PharmacyLocationsState {
  // const factory PharmacyLocationsState.initial() = _Initial;
  // const factory PharmacyLocationsState.pharmaciesLoaded(List<Marker> markers) =
  //     _PharmaciesLoaded;
  const factory PharmacyLocationsState({
    required Set<Marker> markers,
  }) = _PharmacyLocationsState;

  factory PharmacyLocationsState.initial() => PharmacyLocationsState(
        markers: {},
      );
}
