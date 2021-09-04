part of 'fetch_drug_bloc.dart';

@freezed
class FetchDrugState with _$FetchDrugState {
  const factory FetchDrugState.initial() = _Initial;
  const factory FetchDrugState.loadInProgress() = _LoadInProgress;
  const factory FetchDrugState.loadSuccess(Drug drug) = _LoadSuccess;
  const factory FetchDrugState.loadFailure(PharmaFailure pharmaFailure) =
      _LoadFailure;
}
