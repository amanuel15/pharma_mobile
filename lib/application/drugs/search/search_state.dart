part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loadInProgress() = _LoadInProgress;
  const factory SearchState.loadSuccess(List<Recommendation> recommendations) =
      _LoadSuccess;
  const factory SearchState.loadFailure(SearchFailure searchFailure) =
      _LoadFailure;
}
