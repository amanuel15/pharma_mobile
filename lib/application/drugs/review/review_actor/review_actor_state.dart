part of 'review_actor_bloc.dart';

@freezed
class ReviewActorState with _$ReviewActorState {
  const factory ReviewActorState.initial() = _Initial;
  const factory ReviewActorState.actionInProgress() = _ActionInProgress;
  const factory ReviewActorState.deleteFailure(ReviewFailure reviewFailure) =
      _DeleteFailure;
  const factory ReviewActorState.deleteSuccess() = _DeleteSuccess;
  const factory ReviewActorState.createReview() = _CreateReview;
  const factory ReviewActorState.updateReview() = _UpdateReview;
}
