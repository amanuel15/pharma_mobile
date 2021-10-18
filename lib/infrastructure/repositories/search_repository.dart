import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_search_repository.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final Dio _dio;

  SearchRepository(this._dio);

  @override
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
      String searchTerm, LatLng location) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getDrugSearchRecomendations/',
        queryParameters: {
          'searchQuery': searchTerm,
          'radius': 10000,
          'location': [location.latitude, location.longitude],
        },
      );
      print(response.data);
      List recs = response.data['data'];
      return Success(
        recs
            .map(
              (e) => Recommendation(
                id: e['id'],
                name: e['name'],
                brandName: e['brandName'] ?? '',
              ),
            )
            .toList(),
      );
    } on DioError catch (e) {
      print(e);
      return Error(SearchFailure.unexpected());
    }
  }

  @override
  Future<Result<SearchFailure, List<Drug>>> searchDrugs(
    String searchTerm,
    LatLng location,
    String filter,
  ) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getDrugsByQuery/',
        queryParameters: {
          'searchQuery': searchTerm,
          'radius': 10000,
          'location': [
            location.latitude,
            location.longitude
          ], //TODO: get location from user
          'filterBy': filter,
          'pageNumber': 0,
        },
      );
      List recs = response.data['data'];
      return Success(
        recs.map((e) {
          List a = e['reviews'];
          print(a);
          return Drug(
            id: e['_id'],
            pharmacyId: e['pharmacy'],
            drugName: e['name'],
            drugDetail: e['description'],
            drugOrigin: e['countryOfOrigin'] ?? 'Origin Unknown',
            drugPrice: e['price'].toDouble(),
            stock: e['amountInStock'],
            rating: e['rating'].toDouble(),
            createdDate: e['creationDate'],
            imageUrls: [],
            location: [
              {
                'lat': e['location']['coordinates'][0],
                'lng': e['location']['coordinates'][1]
              },
            ],
            brandName:
                e['brandName'] ?? '', // TODO: brand name might not be present
            pharmacyRating: e['pharmacyRating'].toDouble(),
            requiresPrescription: e['requiresPrescription'],
            reviews: a,
            score: e['score'].toDouble(),
          );
        }).toList(),
      );
    } on DioError catch (e) {
      return Error(SearchFailure.unexpected());
    }
  }

  @override
  Future<Result<SearchFailure, List<Pharmacy>>> searchPharmacies(
      String searchTerm, LatLng location) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getPharmacySearchRecomendations/',
        queryParameters: {
          'searchQuery': searchTerm,
          'radius': 10000,
          'location': [location.latitude, location.longitude],
          'pageNumber': 0,
        },
      );
      List recs = response.data['data'];
      List images = recs.isNotEmpty ? recs[0]['pharmacyPhotos'] : [];
      return Success(
        recs.map((e) {
          List a = e['reviews'];
          print(a);
          return Pharmacy(
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
          );
        }).toList(),
      );
    } on DioError catch (e) {
      return Error(SearchFailure.unexpected());
    }
  }
}
