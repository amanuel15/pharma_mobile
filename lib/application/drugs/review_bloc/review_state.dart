part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    required Review review,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
  }) = _ReviewState;

  factory ReviewState.initial() => ReviewState(
        review: Review.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        reviewFailureOrSuccess: null,
      );
}
