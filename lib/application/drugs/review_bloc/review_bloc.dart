import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  //final IDrugRepository _drugRepository;

  ReviewBloc() : super(ReviewState.initial());

  @override
  Stream<ReviewState> mapEventToState(
    ReviewEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        if (e.initialReviewOption == null)
          yield state;
        else
          yield state.copyWith(
            // TODO: check if this outputs the right thing
            review: e.initialReviewOption ?? state.review,
            isEditing: true,
          );
        //e.initialReviewOption;
      },
      reviewBodyChanged: (e) async* {
        yield state.copyWith(
          review:
              state.review.copyWith(reviewBody: ReviewBody(e.reviewBodyStr)),
        );
      },
      reviewStarChanged: (e) async* {
        yield state.copyWith(
          review:
              state.review.copyWith(reviewStar: ReviewStar(e.reviewStarInt)),
        );
      },
      reviewBtnPressed: (e) async* {
        Result<ReviewFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          reviewFailureOrSuccess: null,
        );

        if (state.review.failureOption == null) {
          // failureOrSuccess = state.isEditing
          //     ? await _noteRepository.updateReview(state.review)
          //     : await _noteRepository.createReview(state.review);
        }

        yield state.copyWith(
          isEditing: false,
          showErrorMessages: true,
          reviewFailureOrSuccess: failureOrSuccess,
        );
      },
    );
  }
}
