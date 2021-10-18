import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

abstract class ISearchRepository {
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
    String searchTerm,
    LatLng location,
  );
  Future<Result<SearchFailure, List<Drug>>> searchDrugs(
    String searchTerm,
    LatLng location,
    String filter,
  );
  Future<Result<SearchFailure, List<Pharmacy>>> searchPharmacies(
    String searchTerm,
    LatLng location,
  );
}
