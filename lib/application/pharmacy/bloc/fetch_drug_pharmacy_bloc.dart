import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/review_failure.dart';

part 'fetch_drug_pharmacy_event.dart';
part 'fetch_drug_pharmacy_state.dart';
part 'fetch_drug_pharmacy_bloc.freezed.dart';

@injectable
class FetchDrugPharmacyBloc
    extends Bloc<FetchDrugPharmacyEvent, FetchDrugPharmacyState> {
  final IDrugRepository _drugRepository;
  FetchDrugPharmacyBloc(this._drugRepository)
      : super(const FetchDrugPharmacyState.initial());

  @override
  Stream<FetchDrugPharmacyState> mapEventToState(
    FetchDrugPharmacyEvent event,
  ) async* {
    yield* event.map(
      fetchPharmacy: (e) async* {
        Result<ReviewFailure, Pharmacy> result =
            await _drugRepository.fetchPharmacy(pharmacyId: e.pharmacyId);
        add(FetchDrugPharmacyEvent.pharmacyReceived(result));
      },
      pharmacyReceived: (e) async* {
        yield e.failureOrPharmacy.when(
          (error) => FetchDrugPharmacyState.loadFailure(error),
          (success) => FetchDrugPharmacyState.loadSuccess(success),
        );
      },
    );
  }
}
