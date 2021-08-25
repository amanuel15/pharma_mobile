import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

abstract class IDrugRepository {
  //--Drug Related--
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
      String searchTerm);
  Future<Result<SearchFailure, List<Drug>>> searchDrugs(String searchTerm);
  //--Review Related--
  Future<Result<ReviewFailure, List<Review>>> getReviewsForDrug({
    required String drugId,
    required String filterBy,
    required int pageNumber,
    required String accessToken,
    required String userId,
  });
  Future<Result<ReviewFailure, Unit>> createOrEditReview(Review review);
  Future<Result<ReviewFailure, Unit>> deleteReview(Review review);
}
