import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/unit.dart';

import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<User?> getSignedInUser();
  Future<Result<AuthFailure, Result<User, Unit>>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required UserName userName,
  });
  Future<Result<AuthFailure, Result<User, Unit>>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Result<AuthFailure, Result<User, Unit>>> signInWithGoogle();
  Future<void> signOut();
}
