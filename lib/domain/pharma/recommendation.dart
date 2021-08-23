import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';

@freezed
abstract class Recommendation implements _$Recommendation {
  const Recommendation._();

  const factory Recommendation({
    required String id,
    required String name,
    required String brandName,
  }) = _Recommendation;

  factory Recommendation.empty() => Recommendation(
        id: '',
        name: '',
        brandName: '',
      );
}
