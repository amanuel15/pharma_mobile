part of 'pharmacy_search_bloc.dart';

@freezed
class PharmacySearchState with _$PharmacySearchState {
  const factory PharmacySearchState.initial() = _Initial;
  const factory PharmacySearchState.loadInProgress() = _LoadInProgress;
  const factory PharmacySearchState.loadSuccess(List<Pharmacy> pharmacies) =
      _LoadSuccess;
  const factory PharmacySearchState.loadFailure(SearchFailure searchFailure) =
      _LoadFailure;
}
