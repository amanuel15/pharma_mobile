import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

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
            rating: e['rating'].toDouble(),
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

  @override
  Future<Result<ReviewFailure, Unit>> createOrEditReview({
    required Review review,
    required String accessToken,
    required String userId,
    required String userName,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/review/createOrEditDrugReview/',
        data: {
          'rating': review.reviewStar.getOrCrash(),
          'drugId': review.drugId,
          'description': review.reviewBody.getOrCrash(),
          'name': userName,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      return Success(unit);
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Unit>> deleteReview({
    required Review review,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/review/deleteDrugReview/',
        data: {
          'reviewId': review.id,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      return Success(unit);
    } on DioError catch (e) {
      if (e.response?.data['status'] == 'Invalid Owner')
        return Error(ReviewFailure.unauthorizedAccess());
      else
        return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, List<Review>>> getReviewsForDrug({
    required String drugId,
    required String filterBy,
    required int pageNumber,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/review/getDrugReviews/',
        queryParameters: {
          'drugId': drugId,
          'filterBy': filterBy,
          'pageNumber': pageNumber,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'];
      return Success(revs
          .map(
            (e) => Review(
                id: e['_id'],
                userId: e['userId'],
                reviewBody: ReviewBody(e['description']),
                userName: e['name'],
                reviewStar: ReviewStar(e['rating'].toDouble()),
                drugId: e['drugId'],
                creationDate: e['creationDate'],
                pharmacyId: e['pharmacyId']),
          )
          .toList());
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, List<Review>>> getReviewsForUser({
    required int pageNumber,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/review/getDrugReviews/',
        queryParameters: {
          'pageNumber': pageNumber,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'];
      return Success(revs
          .map(
            (e) => Review(
                id: e['_id'],
                userId: e['userId'],
                reviewBody: ReviewBody(e['description']),
                userName: e['name'],
                reviewStar: ReviewStar(e['rating'].toDouble()),
                drugId: e['drugId'],
                creationDate: e['creationDate'],
                pharmacyId: e['pharmacyId']),
          )
          .toList());
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Unit>> subscribeToDrug({
    required Drug drug,
    required String accessToken,
    required String userId,
    required int expiresInDays,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/review/getDrugReviews/',
        queryParameters: {
          'drugId': drug.id,
          'brandName': drug.brandName,
          "name": drug.drugName,
          "pharmacyId": drug.pharmacyId,
          "expiresInDays": expiresInDays,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      return Success(unit);
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }
}
