part of 'request_form_bloc.dart';

@freezed
class RequestFormEvent with _$RequestFormEvent {
  const factory RequestFormEvent.initialized(
    Request? initialReviewOption,
    String userId,
    String accessToken,
    String userName,
    String pharmacyId,
  ) = _Initialized;
  const factory RequestFormEvent.requestNameChanged(String requestNameStr) =
      _RequestNameChanged;
  const factory RequestFormEvent.submitPressed() = _SubmitPressed;
}
