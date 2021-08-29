part of 'user_account_bloc.dart';

@freezed
class UserAccountState with _$UserAccountState {
  const factory UserAccountState({
    required String name,
    required String id,
    required String accessToken,
  }) = _UserAccountState;

  factory UserAccountState.initial() => UserAccountState(
        accessToken: '',
        id: '',
        name: '',
      );
}
