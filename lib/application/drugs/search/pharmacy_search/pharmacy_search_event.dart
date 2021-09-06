part of 'pharmacy_search_bloc.dart';

@freezed
class PharmacySearchEvent with _$PharmacySearchEvent {
  const factory PharmacySearchEvent.searchPharmacies(
      String searchTerm, LatLng location) = _SearchPharmacies;
  const factory PharmacySearchEvent.pharmaciesReceived(
    Result<SearchFailure, List<Pharmacy>> failureOrPharmacies,
  ) = _PharmaciesReceived;
}
