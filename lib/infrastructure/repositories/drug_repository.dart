import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';

@LazySingleton(as: IDrugRepository)
class DrugRepository implements IDrugRepository {
  final Dio _dio;

  DrugRepository(this._dio);

  @override
  Future<Result<PharmaFailure, Drug>> getDrug(
      {required String drugId,
      required String userId,
      required String accessToken}) async {
    Response response;
    try {
      response = await _dio.get(
        'http://10.0.2.2:3000/client/drug/getDrug', // TODO: change url
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
}
