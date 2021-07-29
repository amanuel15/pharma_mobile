import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
abstract class Review implements _$Review {
  const Review._();

  const factory Review({
    required String id,
    required String userId,
    required String reviewBody,
    required String userName,
    required double reviewStar,
  }) = _Review;

  factory Review.empty() => Review(
        id: '',
        userId: '',
        reviewBody: '',
        userName: '',
        reviewStar: 0,
      );
}
