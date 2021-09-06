part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(String searchTerm, LatLng location) =
      _Search;
  const factory SearchEvent.recommendationsReceived(
    Result<SearchFailure, List<Recommendation>> failureOrRecommendation,
  ) = _RecommendationsReceived;
  const factory SearchEvent.clearSearch() = _ClearSearch;
}
