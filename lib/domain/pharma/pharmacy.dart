import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy.freezed.dart';

@freezed
abstract class Pharmacy implements _$Pharmacy {
  const Pharmacy._();

  const factory Pharmacy({
    required String id,
    required String pharmacyName,
    required String pharmacyDetail,
    required double rating,
    required List<String> imageUrls,
    required List<Map<String, dynamic>> location,
  }) = _Pharmacy;

  factory Pharmacy.empty() => Pharmacy(
        id: '',
        pharmacyName: '',
        pharmacyDetail: '',
        rating: 0,
        imageUrls: [],
        location: [],
      );
}
