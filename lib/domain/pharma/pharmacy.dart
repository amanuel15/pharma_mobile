import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharma_flutter/domain/pharma/review.dart';

part 'pharmacy.freezed.dart';

@freezed
abstract class Pharmacy implements _$Pharmacy {
  const Pharmacy._();

  const factory Pharmacy({
    required String id,
    required String pharmacyName,
    required String pharmacyEmail,
    required double rating,
    required bool acceptsRequests,
    required List<String> imageUrls,
    required List<Map<String, dynamic>> location,
    required String locationDescription,
    List? reviews,
    List? requests,
  }) = _Pharmacy;

  factory Pharmacy.empty() => Pharmacy(
        id: '',
        pharmacyName: '',
        pharmacyEmail: '',
        rating: 0,
        imageUrls: [],
        location: [],
        acceptsRequests: false,
        locationDescription: '',
      );
}
