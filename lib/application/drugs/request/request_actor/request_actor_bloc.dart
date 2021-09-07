import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'request_actor_event.dart';
part 'request_actor_state.dart';
part 'request_actor_bloc.freezed.dart';

@injectable
class RequestActorBloc extends Bloc<RequestActorEvent, RequestActorState> {
  final IDrugRepository _drugRepository;

  RequestActorBloc(this._drugRepository)
      : super(const RequestActorState.initial());

  @override
  Stream<RequestActorState> mapEventToState(
    RequestActorEvent event,
  ) async* {
    yield const RequestActorState.actionInProgress();
    final possibleFailure = await _drugRepository.deleteRequest(
      request: event.request,
      accessToken: event.accessToken,
      userId: event.userId,
    );
    yield possibleFailure.when(
      (f) => RequestActorState.deleteFailure(f),
      (_) => const RequestActorState.deleteSuccess(),
    );
  }
}
