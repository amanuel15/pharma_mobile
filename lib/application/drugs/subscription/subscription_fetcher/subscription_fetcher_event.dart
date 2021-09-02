part of 'subscription_fetcher_bloc.dart';

@freezed
class SubscriptionFetcherEvent with _$SubscriptionFetcherEvent {
  const factory SubscriptionFetcherEvent.fetchSubscriptions(
    String accessToken,
    String userId,
  ) = _FetchSubscriptions;
  const factory SubscriptionFetcherEvent.subscriptionsReceived(
    Result<ReviewFailure, List<Subscription>> failureOrSubscriptions,
  ) = _SubscriptionsReceived;
}
