import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_flutter/domain/core/failures.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

part 'request.freezed.dart';

@freezed
abstract class Request implements _$Request {
  const Request._();

  const factory Request({
    required String id,
    required String userId,
    required ReviewBody drugName,
    required int expiresInDays,
    required String userName,
    required String drugId,
    required String pharmacyId,
    required String creationDate,
    required int subscriberCount,
    required bool isAvailable,
    required bool declined,
  }) = _Request;

  factory Request.empty() => Request(
        id: '',
        userId: '',
        drugName: ReviewBody(''),
        expiresInDays: 0,
        userName: '',
        drugId: '',
        pharmacyId: '',
        creationDate: '',
        subscriberCount: 0,
        isAvailable: false,
        declined: false,
      );

  // TODO: check if this is the reason that error occures in DrugDtailPage
  ValueFailure<dynamic>? get failureOption {
    if (drugName.failureOrUnit.isError()) {
      return drugName.failureOrUnit.getError();
    }
  }
}
