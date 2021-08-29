import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'pharmacy_review.freezed.dart';

@freezed
abstract class PharmacyReview implements _$PharmacyReview {
  const PharmacyReview._();

  const factory PharmacyReview({
    String? id,
    required String userId,
    required ReviewBody reviewBody,
    required String userName,
    required String pharmacyName,
    required ReviewStar reviewStar,
    required String pharmacyId,
    required String creationDate,
  }) = _PharmacyReview;

  factory PharmacyReview.empty() => PharmacyReview(
        userId: '',
        reviewBody: ReviewBody(''),
        userName: '',
        pharmacyName: '',
        reviewStar: ReviewStar(3.5),
        pharmacyId: '',
        creationDate: '',
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
