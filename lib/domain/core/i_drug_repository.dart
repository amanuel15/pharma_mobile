import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

abstract class IDrugRepository {
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
      String searchTerm);
  Future<Result<SearchFailure, List<Drug>>> searchDrugs(String searchTerm);
}
