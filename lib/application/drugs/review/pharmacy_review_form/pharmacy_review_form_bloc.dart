import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_review_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'pharmacy_review_form_event.dart';
part 'pharmacy_review_form_state.dart';
part 'pharmacy_review_form_bloc.freezed.dart';

@injectable
class PharmacyReviewFormBloc
    extends Bloc<PharmacyReviewFormEvent, PharmacyReviewFormState> {
  final IReviewRepository _reviewRepository;

  PharmacyReviewFormBloc(this._reviewRepository)
      : super(PharmacyReviewFormState.initial());

  @override
  Stream<PharmacyReviewFormState> mapEventToState(
      PharmacyReviewFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        if (e.initialReviewOption == null)
          yield state.copyWith(
            review: state.review.copyWith(pharmacyId: e.pharmacyId),
            userId: e.userId,
            accessToken: e.accessToken,
            userName: e.userName,
            isEditing: true,
          );
        else
          yield state.copyWith(
            // TODO: check if this outputs the right thing
            review: e.initialReviewOption ?? state.review,
            userId: e.userId,
            accessToken: e.accessToken,
            userName: e.userName,
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
          failureOrSuccess = await _reviewRepository.createOrEditPharmacyReview(
            review: state.review,
            userId: state.userId,
            accessToken: state.accessToken,
            userName: state.userName,
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
