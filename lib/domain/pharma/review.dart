import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'review.freezed.dart';

@freezed
abstract class Review implements _$Review {
  const Review._();

  const factory Review({
    required String id,
    required String userId,
    required ReviewBody reviewBody,
    required String userName,
    required ReviewStar reviewStar,
    required String drugId,
  }) = _Review;

  factory Review.empty() => Review(
        id: '',
        userId: '',
        reviewBody: ReviewBody(''),
        userName: '',
        reviewStar: ReviewStar(0),
        drugId: '',
      );

  ValueFailure<dynamic>? get failureOption {
    if (reviewBody.failureOrUnit.isError()) {
      return reviewBody.failureOrUnit.getError();
    }
    if (reviewStar.failureOrUnit.isError()) {
      return reviewStar.failureOrUnit.getError();
    }
  }
}
