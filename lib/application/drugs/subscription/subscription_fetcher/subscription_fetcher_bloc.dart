import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_subscription_repository.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';

part 'subscription_fetcher_event.dart';
part 'subscription_fetcher_state.dart';
part 'subscription_fetcher_bloc.freezed.dart';

@injectable
class SubscriptionFetcherBloc
    extends Bloc<SubscriptionFetcherEvent, SubscriptionFetcherState> {
  final ISubscriptionRepository _subscriptionRepository;
  SubscriptionFetcherBloc(this._subscriptionRepository)
      : super(const SubscriptionFetcherState.initial());

  @override
  Stream<SubscriptionFetcherState> mapEventToState(
    SubscriptionFetcherEvent event,
  ) async* {
    yield* event.map(
      fetchSubscriptions: (e) async* {
        Result<ReviewFailure, List<Subscription>> result =
            await _subscriptionRepository.fetchUserSubscriptions(
          userId: e.userId,
          accessToken: e.accessToken,
        );
        add(SubscriptionFetcherEvent.subscriptionsReceived(result));
      },
      subscriptionsReceived: (e) async* {
        yield e.failureOrSubscriptions.when(
          (error) => SubscriptionFetcherState.loadFailure(error),
          (success) => SubscriptionFetcherState.loadSuccess(success),
        );
      },
    );
  }
}
