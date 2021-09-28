import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/markers_failure.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';

abstract class IDrugRepository {
  //--Drug Related--
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
      String searchTerm, LatLng location);
  Future<Result<SearchFailure, List<Drug>>> searchDrugs(
    String searchTerm,
    LatLng location,
    String filter,
  );
  Future<Result<SearchFailure, List<Pharmacy>>> searchPharmacies(
      String searchTerm, LatLng location);
  Future<Result<PharmaFailure, Drug>> getDrug({
    required String drugId,
    required String userId,
    required String accessToken,
  });
  //--Review Related--
  Future<Result<ReviewFailure, List<Review>>> getReviewsForDrug({
    required String drugId,
    required String filterBy,
    required int pageNumber,
    required String accessToken,
    required String userId,
  });
  Future<Result<ReviewFailure, Unit>> createOrEditReview({
    required Review review,
    required String accessToken,
    required String userId,
    required String userName,
  });
  Future<Result<ReviewFailure, Unit>> deleteReview({
    required Review review,
    required String accessToken,
    required String userId,
  });
  Future<Result<ReviewFailure, Unit>> createOrEditPharmacyReview({
    required PharmacyReview review,
    required String accessToken,
    required String userId,
    required String userName,
  });
  Future<Result<ReviewFailure, Unit>> deletePharmacyReview({
    required PharmacyReview review,
    required String accessToken,
    required String userId,
  });

  Future<Result<ReviewFailure, List<Review>>> getReviewsForUser({
    required int pageNumber,
    required String accessToken,
    required String userId,
  });
  Future<Result<ReviewFailure, List<PharmacyReview>>> getReviewsForPharmacy({
    required String filterBy,
    required int pageNumber,
    required String pharmacyId,
    required String accessToken,
    required String userId,
  });

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

  Future<Result<PharmaFailure, List<Pharmacy>>> fetchNearestPharmacies({
    required int radius,
    required LatLng location,
  });

  Future<Result<ReviewFailure, Pharmacy>> fetchPharmacy({
    required String pharmacyId,
  });

  Future<Result<ReviewFailure, List<Subscription>>> fetchUserSubscriptions({
    required String userId,
    required String accessToken,
  });

  // --- Request related ---
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
