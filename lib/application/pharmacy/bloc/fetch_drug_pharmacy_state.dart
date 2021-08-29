part of 'fetch_drug_pharmacy_bloc.dart';

@freezed
class FetchDrugPharmacyState with _$FetchDrugPharmacyState {
  const factory FetchDrugPharmacyState.initial() = _Initial;
  const factory FetchDrugPharmacyState.loadSuccess(Pharmacy pharmacy) =
      _LoadSuccess;
  const factory FetchDrugPharmacyState.loadFailure(
      ReviewFailure pharmacyFailure) = _LoadFailure;
}
