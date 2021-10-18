import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_subscription_repository.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';
import 'package:pharma_flutter/domain/pharma/subscription.dart';

@LazySingleton(as: ISubscriptionRepository)
class SubscriptionRepository implements ISubscriptionRepository {
  final Dio _dio;

  SubscriptionRepository(this._dio);

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
}
