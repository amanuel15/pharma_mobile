part of 'request_fetcher_bloc.dart';

@freezed
class RequestFetcherState with _$RequestFetcherState {
  const factory RequestFetcherState.initial() = _Initial;
  const factory RequestFetcherState.loadInProgress() = _LoadInProgress;
  const factory RequestFetcherState.loadSuccess(List<Request> requests) =
      _LoadSuccess;
  const factory RequestFetcherState.loadFailure(ReviewFailure reviewFailure) =
      _LoadFailure;
}
