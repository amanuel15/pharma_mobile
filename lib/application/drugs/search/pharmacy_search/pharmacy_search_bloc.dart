import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

part 'pharmacy_search_event.dart';
part 'pharmacy_search_state.dart';
part 'pharmacy_search_bloc.freezed.dart';

@injectable
class PharmacySearchBloc
    extends Bloc<PharmacySearchEvent, PharmacySearchState> {
  final IDrugRepository _drugRepository;

  PharmacySearchBloc(this._drugRepository)
      : super(const PharmacySearchState.initial());

  @override
  Stream<PharmacySearchState> mapEventToState(
    PharmacySearchEvent event,
  ) async* {
    yield* event.map(
      searchPharmacies: (e) async* {
        Result<SearchFailure, List<Pharmacy>> result =
            await _drugRepository.searchPharmacies(e.searchTerm, e.location);
        add(PharmacySearchEvent.pharmaciesReceived(result));
      },
      pharmaciesReceived: (e) async* {
        yield e.failureOrPharmacies.when(
          (error) => PharmacySearchState.loadFailure(error),
          (success) => PharmacySearchState.loadSuccess(success),
        );
      },
    );
  }
}
