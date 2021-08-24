part of 'review_actor_bloc.dart';

@freezed
class ReviewActorEvent with _$ReviewActorEvent {
  const factory ReviewActorEvent.deleted(Review review) = _Deleted;
  const factory ReviewActorEvent.created() = _Created;
  const factory ReviewActorEvent.edited(Review review) = _Edited;
}
