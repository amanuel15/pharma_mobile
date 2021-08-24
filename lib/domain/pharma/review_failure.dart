import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_failure.freezed.dart';

@freezed
class ReviewFailure with _$ReviewFailure {
  const factory ReviewFailure.unauthorizedAccess() = UnauthorizedAccess;
  const factory ReviewFailure.serverError() = ServerError;
  const factory ReviewFailure.unableToUpdate() = _UnableToUpdate;
  const factory ReviewFailure.unexpected() = _Unexpected;
}
