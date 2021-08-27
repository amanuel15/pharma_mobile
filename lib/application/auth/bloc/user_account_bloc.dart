import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_flutter/domain/auth/user.dart';

part 'user_account_event.dart';
part 'user_account_state.dart';
part 'user_account_bloc.freezed.dart';

class UserAccountBloc extends Bloc<UserAccountEvent, UserAccountState> {
  UserAccountBloc() : super(UserAccountState.initial());

  @override
  Stream<UserAccountState> mapEventToState(
    UserAccountEvent event,
  ) async* {
    yield* event.map(
      removeUserAccount: (e) async* {
        yield state.copyWith(
          name: '',
          id: '',
          accessToken: '',
        );
      },
      setUserAccount: (e) async* {
        yield state.copyWith(
          name: e.user.userName,
          id: e.user.id,
          accessToken: e.user.token,
        );
      },
    );
  }
}
