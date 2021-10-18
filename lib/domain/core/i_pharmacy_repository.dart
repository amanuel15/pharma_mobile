import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

abstract class IPharmacyRepository {
  Future<Result<PharmaFailure, List<Pharmacy>>> fetchNearestPharmacies({
    required int radius,
    required LatLng location,
  });

  Future<Result<ReviewFailure, Pharmacy>> fetchPharmacy({
    required String pharmacyId,
  });
}
