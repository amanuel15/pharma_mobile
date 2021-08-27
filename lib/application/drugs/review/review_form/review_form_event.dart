part of 'review_form_bloc.dart';

@freezed
class ReviewFormEvent with _$ReviewFormEvent {
  const factory ReviewFormEvent.initialized(
      Review? initialReviewOption,
      String userId,
      String accessToken,
      String userName,
      String drugId) = _Initialized;
  const factory ReviewFormEvent.reviewBodyChanged(String reviewBodyStr) =
      _ReviewBodyChanged;
  const factory ReviewFormEvent.reviewStarChanged(double reviewStarInt) =
      _ReviewStarChanged;
  const factory ReviewFormEvent.reviewBtnPressed() = _ReviewBtnPressed;
}
