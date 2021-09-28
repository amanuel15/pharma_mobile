import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'review_fetcher_event.dart';
part 'review_fetcher_state.dart';
part 'review_fetcher_bloc.freezed.dart';

@injectable
class ReviewFetcherBloc extends Bloc<ReviewFetcherEvent, ReviewFetcherState> {
  final IDrugRepository _drugRepository;

  ReviewFetcherBloc(this._drugRepository) : super(_Initial());

  @override
  Stream<ReviewFetcherState> mapEventToState(
    ReviewFetcherEvent event,
  ) async* {
    yield* event.map(
      fetchReviews: (e) async* {
        yield ReviewFetcherState.loadInProgress();
        Result<ReviewFailure, List<Review>> result =
            await _drugRepository.getReviewsForDrug(
          drugId: e.drugId,
          filterBy: e.filterBy,
          pageNumber: e.pageNumber,
          accessToken: e.accessToken,
          userId: e.userId,
        );
        add(ReviewFetcherEvent.reviewsReceived(result));
      },
      fetchMyReviews: (e) async* {
        yield ReviewFetcherState.loadInProgress();
        Result<ReviewFailure, List<Review>> result =
            await _drugRepository.getReviewsForUser(
          pageNumber: e.pageNumber,
          accessToken: e.accessToken,
          userId: e.userId,
        );
        add(ReviewFetcherEvent.reviewsReceived(result));
      },
      reviewsReceived: (e) async* {
        yield e.failureOrReviews.when(
          (error) => ReviewFetcherState.loadFailure(error),
          (success) => ReviewFetcherState.loadSuccess(success),
        );
      },
    );
  }
}
