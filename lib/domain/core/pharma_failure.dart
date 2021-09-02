import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharma_failure.freezed.dart';

@freezed
class PharmaFailure with _$PharmaFailure {
  const factory PharmaFailure.unauthorizedAccess() = UnauthorizedAccess;
  const factory PharmaFailure.serverError() = ServerError;
  const factory PharmaFailure.unexpected() = _Unexpected;
}
