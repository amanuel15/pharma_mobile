part of 'fetch_drug_pharmacy_bloc.dart';

@freezed
class FetchDrugPharmacyEvent with _$FetchDrugPharmacyEvent {
  const factory FetchDrugPharmacyEvent.fetchPharmacy(String pharmacyId) =
      _FetchPharmacy;
  const factory FetchDrugPharmacyEvent.pharmacyReceived(
    Result<ReviewFailure, Pharmacy> failureOrPharmacy,
  ) = _PharmacyReceived;
}
