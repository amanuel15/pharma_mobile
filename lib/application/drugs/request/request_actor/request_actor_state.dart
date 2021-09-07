part of 'request_actor_bloc.dart';

@freezed
class RequestActorState with _$RequestActorState {
  const factory RequestActorState.initial() = _Initial;
  const factory RequestActorState.actionInProgress() = _ActionInProgress;
  const factory RequestActorState.deleteFailure(ReviewFailure reviewFailure) =
      _DeleteFailure;
  const factory RequestActorState.deleteSuccess() = _DeleteSuccess;
}
