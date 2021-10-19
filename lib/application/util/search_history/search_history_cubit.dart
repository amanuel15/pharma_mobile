import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pharma_flutter/domain/core/i_database_facade.dart';
import 'package:pharma_flutter/infrastructure/core/database/moor_database.dart';

part 'search_history_state.dart';
part 'search_history_cubit.freezed.dart';

@injectable
class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  final IDatabaseFacade _databaseFacade;

  SearchHistoryCubit(this._databaseFacade)
      : super(SearchHistoryState.initial());

  Future<void> getSearchHistory() async {
    //await _databaseFacade.getSearchHistories();
    emit(state.copyWith(searches: await _databaseFacade.getSearchHistories()));
    filterSearchTerms(filter: null);
  }

  Future<void> addSearchTerm(String searchTerm) async {
    if (state.searches.contains(Search(searchTerm: searchTerm))) {
      state.searches.removeWhere((t) => t.searchTerm == searchTerm);
      //await _databaseFacade.updateSearchHistory(Search(searchTerm: searchTerm));
      emit(state.copyWith(
          searches: state.searches + [Search(searchTerm: searchTerm)]));
      filterSearchTerms(filter: null);
      await _databaseFacade.deleteSearchHistory(Search(searchTerm: searchTerm));
      await _databaseFacade.insertSearchHistory(Search(searchTerm: searchTerm));
      //return;
    } else {
      if (state.searches.length > 4) {
        state.searches.removeRange(0, state.searches.length - 4);
        await _databaseFacade.deleteSearchHistory(state.searches[0]);
      }
      emit(state.copyWith(
          searches: state.searches + [Search(searchTerm: searchTerm)]));
      filterSearchTerms(filter: null);
      await _databaseFacade.insertSearchHistory(Search(searchTerm: searchTerm));
    }
  }

  Future<void> deleteSearchTerm(String searchTerm) async {
    List<Search> newSearchs = List.from(state.searches);
    newSearchs.removeWhere((t) => t.searchTerm == searchTerm);
    emit(
      new SearchHistoryState.initial()
          .copyWith(searches: List<Search>.from(newSearchs)),
    );
    filterSearchTerms(filter: null);
    await _databaseFacade.deleteSearchHistory(Search(searchTerm: searchTerm));
    //emit(state.);
    //emit(state.copyWith(searches: newSearchs));
  }

  void setTypedTerm(String term) {
    emit(state.copyWith(typedTerm: term));
  }

  void filterSearchTerms({
    required String? filter,
  }) {
    if (filter != null && filter.isNotEmpty) {
      emit(state.copyWith(
          filteredSearchHistory: state.searches
              .where((term) => term.searchTerm.startsWith(filter))
              .toList()));
      if (state.filteredSearchHistory.isEmpty) setTypedTerm(filter);
      // Reversed because we want the last added items to appear first in the UI
      // return _searchHistory.reversed
      //     .where((term) => term.startsWith(filter))
      //     .toList();
    } else {
      emit(state.copyWith(filteredSearchHistory: state.searches));
      // return _searchHistory.reversed.toList();
    }
  }

  void setFilter(String filter) {
    emit(state.copyWith(filterBy: filter));
  }
}
