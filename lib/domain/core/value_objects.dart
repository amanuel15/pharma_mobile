import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/errors.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/core/unit.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Result<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.when(
        (error) => throw UnexpectedValueError(error), (success) => success);
    //return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Result<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.when(
      (error) => Error(error),
      (success) => Success(unit),
    );
  }

  bool isValid() => value.isSuccess();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
