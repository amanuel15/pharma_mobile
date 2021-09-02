part of 'subscription_fetcher_bloc.dart';

@freezed
class SubscriptionFetcherState with _$SubscriptionFetcherState {
  const factory SubscriptionFetcherState.initial() = _Initial;
  const factory SubscriptionFetcherState.loadInProgress() = _LoadInProgress;
  const factory SubscriptionFetcherState.loadSuccess(
      List<Subscription> subscriptions) = _LoadSuccess;
  const factory SubscriptionFetcherState.loadFailure(
      ReviewFailure subscriptionFailure) = _LoadFailure;
}
