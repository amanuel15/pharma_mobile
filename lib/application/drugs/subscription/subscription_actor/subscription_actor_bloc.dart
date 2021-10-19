import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pharma_flutter/domain/core/i_subscription_repository.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'subscription_actor_event.dart';
part 'subscription_actor_state.dart';
part 'subscription_actor_bloc.freezed.dart';

@injectable
class SubscriptionActorBloc
    extends Bloc<SubscriptionActorEvent, SubscriptionActorState> {
  final ISubscriptionRepository SubscriptionFetcherState;

  SubscriptionActorBloc(this.SubscriptionFetcherState)
      : super(const SubscriptionActorState.initial());

  @override
  Stream<SubscriptionActorState> mapEventToState(
    SubscriptionActorEvent event,
  ) async* {
    yield* event.map(
      subscribed: (e) async* {
        yield const SubscriptionActorState.actionInProgress();
        final possibleFailure = await SubscriptionFetcherState.subscribeToDrug(
          drugId: e.drugId,
          accessToken: e.accessToken,
          userId: e.userId,
          expiresInDays: e.expiresInDays,
        );
        yield possibleFailure.when(
          (f) => SubscriptionActorState.actionFailure(f),
          (_) => const SubscriptionActorState.actionSuccess(),
        );
      },
      unsubscribed: (e) async* {
        yield const SubscriptionActorState.actionInProgress();
        final possibleFailure =
            await SubscriptionFetcherState.unsubscribeFromDrug(
          subscriptionId: e.subscriptionId,
          accessToken: e.accessToken,
          userId: e.userId,
        );
        yield possibleFailure.when(
          (f) => SubscriptionActorState.actionFailure(f),
          (_) => const SubscriptionActorState.actionSuccess(),
        );
      },
    );
  }
}
