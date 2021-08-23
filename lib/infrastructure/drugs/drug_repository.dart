import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';

@LazySingleton(as: IDrugRepository)
class DrugRepository implements IDrugRepository {
  final Dio _dio;

  DrugRepository(this._dio);

  @override
  Future<Result<SearchFailure, List<Recommendation>>> searchRecommendations(
      String searchTerm) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getDrugSearchRecomendations/',
        queryParameters: {
          'searchQuery': searchTerm,
          'radius': 5,
          'location': [9.001820, 38.683257],
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
                brandName: e['brandName'],
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
      String searchTerm) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/search/getDrugsByQuery/',
        queryParameters: {
          'searchQuery': searchTerm,
          'radius': 5,
          'location': [9.001820, 38.683257],
          'filterBy': 'location',
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
            drugOrigin: 'e[countryOfOrigin]',
            drugPrice: e['price'].toDouble(),
            stock: e['amountInStock'],
            rating: e['rating'],
            createdDate: e['creationDate'],
            imageUrls: [],
            location: [
              {
                'lat': e['location']['coordinates'][0],
                'lng': e['location']['coordinates'][1]
              },
            ],
            brandName: e['brandName'],
            pharmacyRating: e['pharmacyRating'],
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
}
