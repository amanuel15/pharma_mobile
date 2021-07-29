import 'package:freezed_annotation/freezed_annotation.dart';

part 'drug.freezed.dart';

@freezed
abstract class Drug implements _$Drug {
  const Drug._();

  const factory Drug({
    required String id,
    required String pharmacyId,
    required String drugName,
    required String drugDetail,
    required String drugOrigin,
    required double drugPrice,
    required List<String> imageUrls,
    required List<Map<String, dynamic>> location,
  }) = _Drug;

  factory Drug.empty() => Drug(
        id: '',
        pharmacyId: '',
        drugName: '',
        drugDetail: '',
        drugOrigin: '',
        drugPrice: 0,
        imageUrls: [],
        location: [],
      );

  // ValueFailure<dynamic> get failureOption {
  //   return body.failureOrUnit
  //       .andThen(todos.failureOrUnit)
  //       .andThen(
  //         tod
  //             .getOrCrash()
  //             // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
  //             .map((todoItem) => todoItem.failureOption)
  //             .filter((o) => o.isSome())
  //             // If we can't get the 0th element, the list is empty. In such a case, it's valid.
  //             .getOrElse(0, (_) => none())
  //             .fold(() => right(unit), (f) => left(f)),
  //       )
  //       .fold((f) => some(f), (_) => none());
  // }
}
