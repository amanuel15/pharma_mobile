part of 'fetch_drug_bloc.dart';

@freezed
class FetchDrugEvent with _$FetchDrugEvent {
  const factory FetchDrugEvent.fetchDrug(
    String drugId,
    String accessToken,
    String userId,
  ) = _FetchDrug;
  const factory FetchDrugEvent.drugReceived(
    Result<PharmaFailure, Drug> failureOrDrug,
  ) = _DrugReceived;
}
