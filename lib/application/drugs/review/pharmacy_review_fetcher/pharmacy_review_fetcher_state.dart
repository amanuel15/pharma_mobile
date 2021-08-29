part of 'pharmacy_review_fetcher_bloc.dart';

@freezed
class PharmacyReviewFetcherState with _$PharmacyReviewFetcherState {
  const factory PharmacyReviewFetcherState.initial() = _Initial;
  const factory PharmacyReviewFetcherState.loadInProgress() = _LoadInProgress;
  const factory PharmacyReviewFetcherState.loadSuccess(
      List<PharmacyReview> reviews) = _LoadSuccess;
  const factory PharmacyReviewFetcherState.loadFailure(
      ReviewFailure reviewFailure) = _LoadFailure;
}
