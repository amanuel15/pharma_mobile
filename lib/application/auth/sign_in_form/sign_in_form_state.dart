part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required UserName userName,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool showPassword,
    required Result<AuthFailure, Result<User, Unit>>? authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      userName: UserName(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccess: null,
      showPassword: false);
}
