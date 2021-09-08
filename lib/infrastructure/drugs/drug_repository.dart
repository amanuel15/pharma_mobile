import 'dart:typed_data';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/src/types/marker.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/markers_failure.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

@LazySingleton(as: IDrugRepository)
class DrugRepository implements IDrugRepository {
  final Dio _dio;

  DrugRepository(this._dio);

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
      String searchTerm, LatLng location) async {
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
  Future<Result<ReviewFailure, Unit>> deletePharmacyReview({
    required PharmacyReview review,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/review/deletePharmacyReview/',
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
        'http://10.0.2.2:3000/client/review/getMyDrugReviews/',
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
  Future<Result<ReviewFailure, List<PharmacyReview>>> getReviewsForPharmacy({
    required String filterBy,
    required int pageNumber,
    required String pharmacyId,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/review/getPharmacyReviews/',
        queryParameters: {
          'pharmacyId': pharmacyId,
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
            (e) => PharmacyReview(
              id: e['_id'],
              userId: e['userId'],
              reviewBody: ReviewBody(e['description']),
              userName: e['name'],
              reviewStar: ReviewStar(e['rating'].toDouble()),
              creationDate: e['creationDate'],
              pharmacyId: e['pharmacyId'],
              pharmacyName: e['pharmacyName'],
            ),
          )
          .toList());
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Unit>> subscribeToDrug({
    required String drugId,
    required String accessToken,
    required String userId,
    required int expiresInDays,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/subscribe/subscribeToDrugOrExtend',
        data: {
          'drugId': drugId,
          'expiresInDays': expiresInDays,
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
      if (e.response?.data['status'] == 'Drug Is In Stock')
        return Error(ReviewFailure.unableToUpdate());
      else
        return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Unit>> unsubscribeFromDrug({
    required String subscriptionId,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/subscribe/removeSubscription',
        data: {
          'subscriptionId': subscriptionId,
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

  @override
  Future<Result<ReviewFailure, List<Subscription>>> fetchUserSubscriptions(
      {required String userId, required String accessToken}) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/subscribe/getMySubscriptions/',
        queryParameters: {},
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'];
      return Success(
        revs
            .map(
              (e) => Subscription(
                id: e['_id'],
                drugName: e['name'],
                drugId: e['drugId'],
                pharmacyId: e['pharmacyId'],
                creationDate: e['creationDate'],
                isAvailable: e['isAvailable'],
                editDate: e['editDate'],
              ),
            )
            .toList(),
      );
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<PharmaFailure, Drug>> getDrug(
      {required String drugId,
      required String userId,
      required String accessToken}) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/drug/getDtrug', // TODO: change url
        queryParameters: {'drugId': drugId},
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'];
      return Success(
        Drug(
          id: revs[0]['_id'],
          pharmacyId: revs[0]['pharmacy'],
          drugName: revs[0]['name'],
          drugDetail: revs[0]['description'],
          drugOrigin: revs[0]['countryOfOrigin'] ?? 'Origin Unknown',
          drugPrice: revs[0]['price'].toDouble(),
          stock: revs[0]['amountInStock'],
          rating: revs[0]['rating'].toDouble(),
          createdDate: revs[0]['creationDate'],
          imageUrls: [],
          location: [
            {
              'lat': revs[0]['location']['coordinates'][0],
              'lng': revs[0]['location']['coordinates'][1]
            },
          ],
          brandName: revs[0]['brandName'],
          pharmacyRating: revs[0]['pharmacyRating'],
          requiresPrescription: revs[0]['requiresPrescription'],
          reviews: revs[0]['reviews'],
          score: revs[0]['score'].toDouble(),
        ),
      );
    } on DioError catch (e) {
      return Error(PharmaFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, Unit>> createRequest({
    required Request request,
    required int days,
    required String userName,
    required String userId,
    required String accessToken,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/request/createRequest',
        data: {
          'name': request.drugName.getOrCrash(),
          'expiresInDays': days,
          'pharmacyId': request.pharmacyId,
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
  Future<Result<ReviewFailure, Unit>> deleteRequest({
    required Request request,
    required String accessToken,
    required String userId,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/request/removeRequest/',
        data: {
          'requestId': request.id,
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
  Future<Result<ReviewFailure, List<Request>>> fetchMyRequests({
    required String userId,
    required String accessToken,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/request/getMyRequests',
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'][0]['requests'];
      return Success(
        revs
            .map(
              (e) => Request(
                id: e['_id'],
                // userId: e['userId'],
                drugName: ReviewBody(e['name']),
                expiresInDays: 0,
                userName: e['userName'] ?? '', // TODO: correct this
                drugId: e['drugId'] ?? '',
                pharmacyId: e['pharmacyId'],
                creationDate: e['creationDate'],
                subscriberCount: e['subscriberCount'],
                isAvailable: e['isAvailable'],
                declined: e['decline'] ?? false,
              ),
            )
            .toList(),
      );
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }

  @override
  Future<Result<ReviewFailure, List<Request>>> fetchRequests({
    required String userId,
    required String accessToken,
    required int pageNumber,
    required String filterBy,
  }) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/request/getRequests',
        queryParameters: {
          'pageNumber': pageNumber,
          'filterBy': filterBy,
        },
        options: Options(
          headers: {
            'id': userId,
            'X-Access-Token': accessToken,
          },
        ),
      );
      List revs = response.data['data'];
      return Success(
        revs
            .map(
              (e) => Request(
                id: e['_id'],
                // userId: e['userId'],
                drugName: e['name'],
                expiresInDays: e['expiresInDays'],
                userName: e['userName'],
                drugId: e['drugId'],
                pharmacyId: e['pharmacyId'],
                creationDate: e['creationDate'],
                subscriberCount: e['subscriberCount'],
                isAvailable: e['isAvailable'],
                declined: e['decline'],
              ),
            )
            .toList(),
      );
    } on DioError catch (e) {
      return Error(ReviewFailure.unexpected());
    }
  }
}
