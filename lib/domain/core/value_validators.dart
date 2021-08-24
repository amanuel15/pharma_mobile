import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/failures.dart';

Result<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return Success(input);
  } else {
    return Error(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Result<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return Success(input);
  } else {
    return Error(ValueFailure.empty(failedValue: input));
  }
}

Result<ValueFailure<int>, int> validateIntNotZero(int input) {
  if (input != 0) {
    return Success(input);
  } else {
    return Error(ValueFailure.empty(failedValue: input));
  }
}

Result<ValueFailure<double>, double> validateStars(double input) {
  if (input < 0 || input > 5) {
    return Error(ValueFailure.empty(failedValue: input));
  } else {
    return Success(input);
  }
}

Result<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return Error(ValueFailure.multiline(failedValue: input));
  } else {
    return Success(input);
  }
}

Result<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Success(input);
  } else {
    return Error(ValueFailure.invalidEmail(failedValue: input));
  }
}

Result<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return Success(input);
  } else {
    return Error(ValueFailure.shortPassword(failedValue: input));
  }
}
