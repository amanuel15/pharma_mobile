import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/core/value_objects.dart';
import 'package:pharma_flutter/domain/core/value_validators.dart';

class ReviewBody extends ValueObject<String> {
  @override
  final Result<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory ReviewBody(String input) {
    //validateStringNotEmpty(validateMaxStringLength(input, maxLength).get());
    return ReviewBody._(
      validateStringNotEmpty(validateMaxStringLength(input, maxLength).get()),
    );
  }

  const ReviewBody._(this.value);
}

class ReviewStar extends ValueObject<double> {
  @override
  final Result<ValueFailure<double>, double> value;

  static const maxValue = 5;

  factory ReviewStar(double input) {
    return ReviewStar._(
      validateStars(input),
    );
  }

  const ReviewStar._(this.value);
}
