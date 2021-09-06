part of 'request_form_bloc.dart';

@freezed
class RequestFormState with _$RequestFormState {
  const factory RequestFormState({
    required Request request,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSubmitting,
    required Result<ReviewFailure, Unit>? requestFailureOrSuccess,
    required String accessToken,
    required String userId,
    required String userName,
  }) = _RequestFormState;

  factory RequestFormState.initial() => RequestFormState(
        request: Request.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        requestFailureOrSuccess: null,
        accessToken: '',
        userId: '',
        userName: '',
      );
}
