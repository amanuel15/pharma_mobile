import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_review_repository.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'pharmacy_review_fetcher_event.dart';
part 'pharmacy_review_fetcher_state.dart';
part 'pharmacy_review_fetcher_bloc.freezed.dart';

@injectable
class PharmacyReviewFetcherBloc
    extends Bloc<PharmacyReviewFetcherEvent, PharmacyReviewFetcherState> {
  final IReviewRepository _reviewRepository;
  PharmacyReviewFetcherBloc(this._reviewRepository)
      : super(const PharmacyReviewFetcherState.initial());

  @override
  Stream<PharmacyReviewFetcherState> mapEventToState(
    PharmacyReviewFetcherEvent event,
  ) async* {
    yield* event.map(
      fetchPharmacyReviews: (e) async* {
        Result<ReviewFailure, List<PharmacyReview>> result =
            await _reviewRepository.getReviewsForPharmacy(
          filterBy: e.filterBy,
          pageNumber: e.pageNumber,
          accessToken: e.accessToken,
          userId: e.userId,
          pharmacyId: e.pharmacyId,
        );
        add(PharmacyReviewFetcherEvent.pharmacyReviewsReceived(result));
      },
      fetchMyPharmacyReviews: (e) async* {
        // Result<ReviewFailure, List<PharmacyReview>> result =
        //     await _drugRepository.getPharmacyReviewsForUser(
        //   pageNumber: e.pageNumber,
        //   accessToken: e.accessToken,
        //   userId: e.userId,
        // );
        // add(PharmacyReviewFetcherEvent.pharmacyReviewsReceived(result));
      },
      pharmacyReviewsReceived: (e) async* {
        yield e.failureOrPharmacyReviews.when(
          (error) => PharmacyReviewFetcherState.loadFailure(error),
          (success) => PharmacyReviewFetcherState.loadSuccess(success),
        );
      },
    );
  }
}
