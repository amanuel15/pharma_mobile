part of 'pharmacy_review_form_bloc.dart';

@freezed
class PharmacyReviewFormState with _$PharmacyReviewFormState {
  const factory PharmacyReviewFormState({
    required PharmacyReview review,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Result<ReviewFailure, Unit>? reviewFailureOrSuccess,
    required String accessToken,
    required String userId,
    required String userName,
  }) = _PharmacyReviewFormState;

  factory PharmacyReviewFormState.initial() => PharmacyReviewFormState(
        review: PharmacyReview.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        reviewFailureOrSuccess: null,
        accessToken: '',
        userId: '',
        userName: '',
      );
}
