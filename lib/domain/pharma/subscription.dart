import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';

@freezed
abstract class Subscription implements _$Subscription {
  const Subscription._();

  const factory Subscription({
    required String drugName,
    required String id,
    required String drugId,
    required String pharmacyId,
    required String creationDate,
    String? editDate,
    required bool isAvailable,
  }) = _Subscription;

  factory Subscription.empty() => Subscription(
        drugName: '',
        id: '',
        drugId: '',
        pharmacyId: '',
        creationDate: '',
        isAvailable: false,
      );
}
