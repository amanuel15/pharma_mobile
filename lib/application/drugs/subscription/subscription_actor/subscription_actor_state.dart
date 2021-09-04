part of 'subscription_actor_bloc.dart';

@freezed
class SubscriptionActorState with _$SubscriptionActorState {
  const factory SubscriptionActorState.initial() = _Initial;
  const factory SubscriptionActorState.actionInProgress() = _ActionInProgress;
  const factory SubscriptionActorState.actionFailure(
      ReviewFailure reviewFailure) = _ActionFailure;
  const factory SubscriptionActorState.actionSuccess() = _ActionSuccess;
}
