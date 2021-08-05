import 'package:pharma_flutter/infrastructure/core/database/moor_database.dart';

abstract class IDatabaseFacade {
  // Future<User> getSignedInUser();
  // Future<Result<AuthFailure, Unit>> registerWithEmailAndPassword({
  //   required EmailAddress emailAddress,
  //   required Password password,
  // });
  // Future<Result<AuthFailure, Unit>> signInWithEmailAndPassword({
  //   required EmailAddress emailAddress,
  //   required Password password,
  // });
  // Future<Result<AuthFailure, Unit>> signInWithGoogle();
  // Future<void> signOut();
  Future<List<Search>> getSearchHistories();
  Future insertSearchHistory(Search search);
  Future deleteSearchHistory(Search search);
  Future updateSearchHistory(Search search);
}
