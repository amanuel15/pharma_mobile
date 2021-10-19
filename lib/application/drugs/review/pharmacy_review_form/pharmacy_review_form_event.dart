part of 'pharmacy_review_form_bloc.dart';

@freezed
class PharmacyReviewFormEvent with _$PharmacyReviewFormEvent {
  const factory PharmacyReviewFormEvent.initialized(
    PharmacyReview? initialReviewOption,
    String userId,
    String accessToken,
    String userName,
    String pharmacyId,
  ) = _Initialized;
  const factory PharmacyReviewFormEvent.reviewBodyChanged(
      String reviewBodyStr) = _ReviewBodyChanged;
  const factory PharmacyReviewFormEvent.reviewStarChanged(
      double reviewStarInt) = _ReviewStarChanged;
  const factory PharmacyReviewFormEvent.reviewBtnPressed() = _ReviewBtnPressed;
}
