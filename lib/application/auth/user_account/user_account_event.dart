part of 'user_account_bloc.dart';

@freezed
class UserAccountEvent with _$UserAccountEvent {
  const factory UserAccountEvent.removeUserAccount() = RemoveUserAccount;
  const factory UserAccountEvent.setUserAccount(User user) = SetUserAccount;
}
