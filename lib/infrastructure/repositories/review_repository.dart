import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_review_repository.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy_review.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

@LazySingleton(as: IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final Dio _dio;

  ReviewRepository(this._dio);

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
  Future<Result<ReviewFailure, Unit>> createOrEditPharmacyReview({
    required PharmacyReview review,
    required String accessToken,
    required String userId,
    required String userName,
  }) async {
    Response response;
    try {
      response = await _dio.post(
        'http://10.0.2.2:3000/client/review/createOrEditPharmacyReview/',
        data: {
          'rating': review.reviewStar.getOrCrash(),
          'pharmacyId': review.pharmacyId,
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
              pharmacyId: e['pharmacyId'],
            ),
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
              pharmacyId: e['pharmacyId'],
            ),
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
}
