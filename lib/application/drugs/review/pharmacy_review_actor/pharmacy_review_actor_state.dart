part of 'pharmacy_review_actor_bloc.dart';

@freezed
class PharmacyReviewActorState with _$PharmacyReviewActorState {
  const factory PharmacyReviewActorState.initial() = _Initial;
  const factory PharmacyReviewActorState.actionInProgress() = _ActionInProgress;
  const factory PharmacyReviewActorState.deleteFailure(
      ReviewFailure reviewFailure) = _DeleteFailure;
  const factory PharmacyReviewActorState.deleteSuccess() = _DeleteSuccess;
  const factory PharmacyReviewActorState.createReview() = _CreateReview;
  const factory PharmacyReviewActorState.updateReview() = _UpdateReview;
}
