part of 'search_history_cubit.dart';

@freezed
abstract class SearchHistoryState with _$SearchHistoryState {
  // TODO: make sure search words doesnt repeat (maybe use Set instead of List)
  const factory SearchHistoryState({
    required List<String> searches,
    required String typedTerm,
  }) = _SearchHistoryState;

  factory SearchHistoryState.initial() => SearchHistoryState(
        searches: [],
        typedTerm: '',
      );
}
