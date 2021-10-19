import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';

abstract class ISubscriptionRepository {
  Future<Result<ReviewFailure, Unit>> subscribeToDrug({
    required String drugId,
    required String accessToken,
    required String userId,
    required int expiresInDays,
  });

  Future<Result<ReviewFailure, Unit>> unsubscribeFromDrug({
    required String subscriptionId,
    required String accessToken,
    required String userId,
  });

  Future<Result<ReviewFailure, List<Subscription>>> fetchUserSubscriptions({
    required String userId,
    required String accessToken,
  });
}
