import 'package:freezed_annotation/freezed_annotation.dart';

part 'markers_failure.freezed.dart';

@freezed
class MarkersFailure with _$MarkersFailure {
  const factory MarkersFailure.unauthorizedAccess() = UnauthorizedAccess;
  const factory MarkersFailure.serverError() = ServerError;
  const factory MarkersFailure.unableToFetchMarkers() = _UnableToFetchMarkers;
  const factory MarkersFailure.unexpected() = _Unexpected;
}
