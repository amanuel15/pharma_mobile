part of 'subscription_actor_bloc.dart';

@freezed
class SubscriptionActorEvent with _$SubscriptionActorEvent {
  const factory SubscriptionActorEvent.subscribed(
    String drugId,
    int expiresInDays,
    String accessToken,
    String userId,
  ) = _Subscribed;
  const factory SubscriptionActorEvent.unsubscribed(
    String subscriptionId,
    String accessToken,
    String userId,
  ) = _Unsubscribed;
}
