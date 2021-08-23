part of 'search_result_bloc.dart';

@freezed
class SearchResultEvent with _$SearchResultEvent {
  const factory SearchResultEvent.searchDrugs(String searchTerm) = _SearchDrugs;
  const factory SearchResultEvent.drugsReceived(
    Result<SearchFailure, List<Drug>> failureOrDrugs,
  ) = _DrugsReceived;
}
