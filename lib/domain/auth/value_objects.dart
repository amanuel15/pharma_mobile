import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/core/value_objects.dart';
import 'package:pharma_flutter/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Result<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Result<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
