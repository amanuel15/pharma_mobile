import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'pharmacy_review_actor_event.dart';
part 'pharmacy_review_actor_state.dart';
part 'pharmacy_review_actor_bloc.freezed.dart';

@injectable
class PharmacyReviewActorBloc
    extends Bloc<PharmacyReviewActorEvent, PharmacyReviewActorState> {
  final IDrugRepository _drugRepository;

  PharmacyReviewActorBloc(this._drugRepository)
      : super(const PharmacyReviewActorState.initial());

  @override
  Stream<PharmacyReviewActorState> mapEventToState(
    PharmacyReviewActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const PharmacyReviewActorState.actionInProgress();
        final possibleFailure = await _drugRepository.deletePharmacyReview(
            review: e.review, userId: e.userId, accessToken: e.accessToken);
        yield possibleFailure.when(
          (f) => PharmacyReviewActorState.deleteFailure(f),
          (_) => const PharmacyReviewActorState.deleteSuccess(),
        );
      },
      created: (e) async* {},
      edited: (e) async* {},
    );
  }
}
