part of 'search_history_cubit.dart';

@freezed
abstract class SearchHistoryState with _$SearchHistoryState {
  // TODO: make sure search words doesnt repeat (maybe use Set instead of List)
  const factory SearchHistoryState({
    required List<Search> searches,
    required String typedTerm,
    required List<Search> filteredSearchHistory,
    required FloatingSearchBarController floatingSearchBarController,
    required String filterBy,
  }) = _SearchHistoryState;

  factory SearchHistoryState.initial() => SearchHistoryState(
        searches: [],
        typedTerm: '',
        filteredSearchHistory: [],
        floatingSearchBarController: FloatingSearchBarController(),
        filterBy: 'location',
      );
}
