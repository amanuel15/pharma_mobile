import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/core/i_drug_repository.dart';
import 'package:pharma_flutter/domain/pharma/recommendation.dart';
import 'package:pharma_flutter/domain/pharma/search/search_failure.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDrugRepository _drugRepository;

  SearchBloc(this._drugRepository) : super(const SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      search: (e) async* {
        yield const SearchState.loadInProgress();
        Result<SearchFailure, List<Recommendation>> result =
            await _drugRepository.searchRecommendations(
                e.searchTerm, e.location);
        add(SearchEvent.recommendationsReceived(result));
      },
      recommendationsReceived: (e) async* {
        yield e.failureOrRecommendation.when(
          (error) => SearchState.loadFailure(error),
          (success) => SearchState.loadSuccess(success),
        );
      },
      clearSearch: (e) async* {
        yield const SearchState.initial();
      },
    );
  }
}
