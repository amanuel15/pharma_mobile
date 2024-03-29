import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/core/i_search_repository.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';
part 'search_result_bloc.freezed.dart';

@injectable
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  final ISearchRepository _searchRepository;

  SearchResultBloc(this._searchRepository)
      : super(const SearchResultState.initial());

  @override
  Stream<SearchResultState> mapEventToState(
    SearchResultEvent event,
  ) async* {
    yield* event.map(
      searchDrugs: (e) async* {
        yield SearchResultState.loadInProgress();
        Result<SearchFailure, List<Drug>> result = await _searchRepository
            .searchDrugs(e.searchTerm, e.location, e.filter);
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
