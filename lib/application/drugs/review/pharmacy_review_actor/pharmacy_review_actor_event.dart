part of 'pharmacy_review_actor_bloc.dart';

@freezed
class PharmacyReviewActorEvent with _$PharmacyReviewActorEvent {
  const factory PharmacyReviewActorEvent.deleted(
    PharmacyReview review,
    String accessToken,
    String userId,
  ) = _Deleted;
  const factory PharmacyReviewActorEvent.created() = _Created;
  const factory PharmacyReviewActorEvent.edited(PharmacyReview review) =
      _Edited;
}
