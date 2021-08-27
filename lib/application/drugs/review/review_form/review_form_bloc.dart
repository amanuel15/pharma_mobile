import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'review_form_event.dart';
part 'review_form_state.dart';
part 'review_form_bloc.freezed.dart';

@injectable
class ReviewFormBloc extends Bloc<ReviewFormEvent, ReviewFormState> {
  final IDrugRepository _drugRepository;

  ReviewFormBloc(this._drugRepository) : super(ReviewFormState.initial());

  @override
  Stream<ReviewFormState> mapEventToState(
    ReviewFormEvent event,
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
          reviewFailureOrSuccess: null,
        );
      },
      reviewStarChanged: (e) async* {
        yield state.copyWith(
          review:
              state.review.copyWith(reviewStar: ReviewStar(e.reviewStarInt)),
          reviewFailureOrSuccess: null,
        );
      },
      reviewBtnPressed: (e) async* {
        Result<ReviewFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          reviewFailureOrSuccess: null,
        );

        if (state.review.failureOption == null) {
          failureOrSuccess = await _drugRepository.createOrEditReview(
            review: state.review,
            userId: state.userId,
            accessToken: state.accessToken,
          );
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
