part of 'review_fetcher_bloc.dart';

@freezed
class ReviewFetcherState with _$ReviewFetcherState {
  const factory ReviewFetcherState.initial() = _Initial;
  const factory ReviewFetcherState.loadInProgress() = _LoadInProgress;
  const factory ReviewFetcherState.loadSuccess(List<Review> reviews) =
      _LoadSuccess;
  const factory ReviewFetcherState.loadFailure(ReviewFailure reviewFailure) =
      _LoadFailure;
}
