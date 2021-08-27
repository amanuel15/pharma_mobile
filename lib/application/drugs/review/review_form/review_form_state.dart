part of 'review_form_bloc.dart';

@freezed
class ReviewFormState with _$ReviewFormState {
  const factory ReviewFormState({
    required Review review,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
    required String accessToken,
    required String userId,
    required String userName,
  }) = _ReviewFormState;

  factory ReviewFormState.initial() => ReviewFormState(
        review: Review.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        reviewFailureOrSuccess: null,
        accessToken: '',
        userId: '',
        userName: '',
      );
}
