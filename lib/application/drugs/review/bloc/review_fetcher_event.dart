part of 'review_fetcher_bloc.dart';

@freezed
class ReviewFetcherEvent with _$ReviewFetcherEvent {
  const factory ReviewFetcherEvent.fetchReviews(
    String drugId,
    String accessToken,
    int pageNumber,
    String userId,
    String filterBy,
  ) = _FetchReviews;
  const factory ReviewFetcherEvent.reviewsReceived(
    Result<ReviewFailure, List<Review>> failureOrReviews,
  ) = _ReviewsReceived;
}
