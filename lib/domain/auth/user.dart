import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User({
    required String id,
    required String token,
    required String userName,
  }) = _User;
}
