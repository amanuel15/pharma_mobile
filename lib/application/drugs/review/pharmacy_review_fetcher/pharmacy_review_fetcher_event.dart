part of 'pharmacy_review_fetcher_bloc.dart';

@freezed
class PharmacyReviewFetcherEvent with _$PharmacyReviewFetcherEvent {
  const factory PharmacyReviewFetcherEvent.fetchPharmacyReviews(
    String pharmacyId,
    String accessToken,
    int pageNumber,
    String userId,
    String filterBy,
  ) = _FetchPharmacyReviews;
  const factory PharmacyReviewFetcherEvent.fetchMyPharmacyReviews(
    String accessToken,
    int pageNumber,
    String userId,
  ) = _FetchMyPharmacyReviews;
  const factory PharmacyReviewFetcherEvent.pharmacyReviewsReceived(
    Result<ReviewFailure, List<PharmacyReview>> failureOrPharmacyReviews,
  ) = _PharmacyReviewsReceived;
}
