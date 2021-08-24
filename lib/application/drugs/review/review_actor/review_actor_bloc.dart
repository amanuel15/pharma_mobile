import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'review_actor_event.dart';
part 'review_actor_state.dart';
part 'review_actor_bloc.freezed.dart';

@injectable
class ReviewActorBloc extends Bloc<ReviewActorEvent, ReviewActorState> {
  final IDrugRepository _drugRepository;

  ReviewActorBloc(this._drugRepository)
      : super(const ReviewActorState.initial());

  @override
  Stream<ReviewActorState> mapEventToState(
    ReviewActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const ReviewActorState.actionInProgress();
        final possibleFailure = await _drugRepository.deleteReview(e.review);
        yield possibleFailure.when(
          (f) => ReviewActorState.deleteFailure(f),
          (_) => const ReviewActorState.deleteSuccess(),
        );
      },
      created: (e) async* {},
      edited: (e) async* {},
    );

    // yield const ReviewActorState.actionInProgress();
    // final possibleFailure = await _drugRepository.deleteReview(event.review);
    // yield possibleFailure.when(
    //   (f) => ReviewActorState.deleteFailure(f),
    //   (_) => const ReviewActorState.deleteSuccess(),
    // );
  }
}
