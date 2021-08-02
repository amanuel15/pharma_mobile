import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/auth/auth_failure.dart';
import 'package:pharma_flutter/domain/auth/i_auth_facade.dart';
import 'package:pharma_flutter/domain/auth/value_objects.dart';
import 'package:pharma_flutter/domain/core/unit.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  //final IAuthFacade _authFacade;

  SignInFormBloc() : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // yield* event.map(
    //   emailChanged: (e) async* {
    //     yield state.copyWith(
    //       emailAddress: EmailAddress(e.emailStr),
    //       authFailureOrSuccess: null,
    //     );
    //   },
    //   passwordChanged: (e) async* {
    //     yield state.copyWith(
    //       password: Password(e.passwordStr),
    //       authFailureOrSuccess: null,
    //     );
    //   },
    //   signInWithEmailAndPasswordPressed: (e) async* {
    //     yield* _performActionOnAuthFacadeWithEmailAndPassword(
    //       _authFacade.signInWithEmailAndPassword,
    //     );
    //   },
    //   signInWithGooglePressed: (e) async* {
    //     yield state.copyWith(
    //       isSubmitting: true,
    //       authFailureOrSuccess: null,
    //     );
    //     final failureOrSuccess = await _authFacade.signInWithGoogle();
    //     yield state.copyWith(
    //       isSubmitting: false,
    //       authFailureOrSuccess: failureOrSuccess,
    //     );
    //   },
    // );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Result<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    // TODO: check if the nullability casuses any issues
    Result<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: null,
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: failureOrSuccess,
    );
  }
}
