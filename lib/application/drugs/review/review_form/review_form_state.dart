part of 'review_form_bloc.dart';

@freezed
class ReviewFormState with _$ReviewFormState {
  const factory ReviewFormState({
    required Review review,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
  }) = _ReviewFormState;

  factory ReviewFormState.initial() => ReviewFormState(
        review: Review.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        reviewFailureOrSuccess: null,
      );
}
