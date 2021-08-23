part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState.initial() = _Initial;
  const factory SearchResultState.loadInProgress() = _LoadInProgress;
  const factory SearchResultState.loadSuccess(List<Drug> drugs) = _LoadSuccess;
  const factory SearchResultState.loadFailure(SearchFailure searchFailure) =
      _LoadFailure;
}
