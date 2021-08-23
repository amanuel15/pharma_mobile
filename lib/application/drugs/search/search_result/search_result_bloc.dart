import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';
part 'search_result_bloc.freezed.dart';

@injectable
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  final IDrugRepository _drugRepository;

  SearchResultBloc(this._drugRepository)
      : super(const SearchResultState.initial());

  @override
  Stream<SearchResultState> mapEventToState(
    SearchResultEvent event,
  ) async* {
    yield* event.map(
      searchDrugs: (e) async* {
        Result<SearchFailure, List<Drug>> result =
            await _drugRepository.searchDrugs(e.searchTerm);
        add(SearchResultEvent.drugsReceived(result));
      },
      drugsReceived: (e) async* {
        yield e.failureOrDrugs.when(
          (error) => SearchResultState.loadFailure(error),
          (success) => SearchResultState.loadSuccess(success),
        );
      },
    );
  }
}
