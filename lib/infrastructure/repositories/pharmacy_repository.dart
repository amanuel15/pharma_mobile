import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_pharmacy_repository.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

@LazySingleton(as: IPharmacyRepository)
class PharmacyRepository implements IPharmacyRepository {
  final Dio _dio;

  PharmacyRepository(this._dio);

  @override
  Future<Result<PharmaFailure, List<Pharmacy>>> fetchNearestPharmacies({
    required int radius,
    required LatLng location,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getNearByPharmacies/',
        queryParameters: {
          'radius': radius,
          'location': [location.latitude, location.longitude],
        },
      );
      List revs = response.data['data'];
      List images = revs[0]['pharmacyPhotos'];
      return Success(
        revs
            .map(
              (e) => Pharmacy(
                id: e['_id'],
                pharmacyName: e['name'],
                pharmacyEmail: e['email'],
                rating: e['rating'].toDouble(),
                acceptsRequests: e['acceptsRequests'],
                imageUrls: images.map((e) => e.toString()).toList(),
                location: [
                  {
                    'lat': e['location']['coordinates'][0],
                    'lng': e['location']['coordinates'][1]
                  },
                ],
                locationDescription: e['locationDescription'],
                reviews: e['reviews'],
                requests: e['requests'],
              ),
            )
            .toList(),
      );
    } on DioError catch (e) {
      return Error(PharmaFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Pharmacy>> fetchPharmacy(
      {required String pharmacyId}) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getPharmacy/',
        queryParameters: {
          'id': pharmacyId,
        },
      );
      List revs = response.data['data'];
      List images = revs[0]['pharmacyPhotos'];
      return Success(
        Pharmacy(
          id: revs[0]['_id'],
          pharmacyName: revs[0]['name'],
          pharmacyEmail: revs[0]['email'],
          rating: revs[0]['rating'].toDouble(),
          acceptsRequests: revs[0]['acceptsRequests'],
          imageUrls: images.map((e) => e.toString()).toList(),
          location: [
            {
              'lat': revs[0]['location']['coordinates'][0],
              'lng': revs[0]['location']['coordinates'][1],
            },
          ],
          locationDescription: revs[0]['locationDescription'],
        ),
      );
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }
}
