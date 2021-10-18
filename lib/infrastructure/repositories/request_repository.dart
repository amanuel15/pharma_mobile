import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_request_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/request.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/value_objects.dart';

@LazySingleton(as: IRequestRepository)
class RequestRepository implements IRequestRepository {
  final Dio _dio;

  RequestRepository(this._dio);

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
