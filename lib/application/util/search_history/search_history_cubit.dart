import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_history_state.dart';
part 'search_history_cubit.freezed.dart';

@injectable
class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  SearchHistoryCubit() : super(SearchHistoryState.initial());

  void getSearchHistory() {
    emit(state.copyWith(searches: ['aman', 'xerxes', 'hello', 'fara sitamem']));
    filterSearchTerms(filter: null);
  }

  void addSearchTerm(String searchTerm) {
    if (state.searches.contains(searchTerm)) {
      state.searches.removeWhere((t) => t == searchTerm);
      emit(state.copyWith(searches: state.searches + [searchTerm]));
      filterSearchTerms(filter: null);
      return;
    }
    if (state.searches.length > 4) {
      state.searches.removeRange(0, state.searches.length - 4);
    }
    emit(state.copyWith(searches: state.searches + [searchTerm]));
    filterSearchTerms(filter: null);
  }

  void deleteSearchTerm(String searchTerm) {
    List<String> newSearchs = List.from(state.searches);
    newSearchs.removeWhere((t) => t == searchTerm);
    emit(
      new SearchHistoryState.initial()
          .copyWith(searches: List<String>.from(newSearchs)),
    );
    filterSearchTerms(filter: null);
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
              .where((term) => term.startsWith(filter))
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
}
