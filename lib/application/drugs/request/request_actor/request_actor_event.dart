part of 'request_actor_bloc.dart';

@freezed
class RequestActorEvent with _$RequestActorEvent {
  const factory RequestActorEvent.deleted(
    Request request,
    String accessToken,
    String userId,
  ) = _Deleted;
}
