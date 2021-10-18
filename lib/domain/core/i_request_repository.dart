import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

abstract class IRequestRepository {
  Future<Result<ReviewFailure, Unit>> createRequest({
    required Request request,
    required int days,
    required String userName,
    required String userId,
    required String accessToken,
  });
  Future<Result<ReviewFailure, Unit>> deleteRequest({
    required Request request,
    required String accessToken,
    required String userId,
  });

  Future<Result<ReviewFailure, List<Request>>> fetchMyRequests({
    required String userId,
    required String accessToken,
  });

  Future<Result<ReviewFailure, List<Request>>> fetchRequests({
    required String userId,
    required String accessToken,
    required int pageNumber,
    required String filterBy,
  });
}
