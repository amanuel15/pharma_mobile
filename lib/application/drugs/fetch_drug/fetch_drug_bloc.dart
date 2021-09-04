import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/pharma_failure.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';

part 'fetch_drug_event.dart';
part 'fetch_drug_state.dart';
part 'fetch_drug_bloc.freezed.dart';

@injectable
class FetchDrugBloc extends Bloc<FetchDrugEvent, FetchDrugState> {
  IDrugRepository _drugRepository;

  FetchDrugBloc(this._drugRepository) : super(const FetchDrugState.initial());

  @override
  Stream<FetchDrugState> mapEventToState(
    FetchDrugEvent event,
  ) async* {
    yield* event.map(
      fetchDrug: (e) async* {
        Result<PharmaFailure, Drug> result = await _drugRepository.getDrug(
          drugId: e.drugId,
          accessToken: e.accessToken,
          userId: e.userId,
        );
        add(FetchDrugEvent.drugReceived(result));
      },
      drugReceived: (e) async* {
        yield e.failureOrDrug.when(
          (error) => FetchDrugState.loadFailure(error),
          (success) => FetchDrugState.loadSuccess(success),
        );
      },
    );
  }
}
