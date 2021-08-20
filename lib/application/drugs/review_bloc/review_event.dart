part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.initialized(Review? initialReviewOption) =
      _Initialized;
  const factory ReviewEvent.reviewBodyChanged(String reviewBodyStr) =
      _ReviewBodyChanged;
  const factory ReviewEvent.reviewStarChanged(int reviewStarInt) =
      _ReviewStarChanged;
  const factory ReviewEvent.reviewBtnPressed() = _ReviewBtnPressed;
}
