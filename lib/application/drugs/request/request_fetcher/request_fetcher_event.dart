part of 'request_fetcher_bloc.dart';

@freezed
class RequestFetcherEvent with _$RequestFetcherEvent {
  const factory RequestFetcherEvent.fetchRequests(
    String accessToken,
    int pageNumber,
    String userId,
    String filterBy,
  ) = _FetchRequests;
  const factory RequestFetcherEvent.fetchMyRequests(
    String accessToken,
    String userId,
  ) = _FetchMyRequests;
  const factory RequestFetcherEvent.requestsReceived(
    Result<ReviewFailure, List<Request>> failureOrRequests,
  ) = _RequestsReceived;
}
