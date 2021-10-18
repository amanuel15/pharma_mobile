import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';

abstract class IDrugRepository {
  Future<Result<PharmaFailure, Drug>> getDrug({
    required String drugId,
    required String userId,
    required String accessToken,
  });
}
