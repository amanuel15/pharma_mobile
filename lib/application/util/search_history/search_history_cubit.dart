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
  }

  void addSearchTerm(String searchTerm) {
    if (state.searches.contains(searchTerm)) {
      state.searches.removeWhere((t) => t == searchTerm);
      emit(state.copyWith(searches: state.searches + [searchTerm]));
      return;
    }
    if (state.searches.length > 4) {
      state.searches.removeRange(0, state.searches.length - 4);
    }
    emit(state.copyWith(searches: state.searches + [searchTerm]));
  }

  void deleteSearchTerm(String searchTerm) {
    List<String> newSearchs = List.from(state.searches);
    newSearchs.removeWhere((t) => t == searchTerm);
    emit(
      new SearchHistoryState.initial()
          .copyWith(searches: List<String>.from(newSearchs)),
    );
    //emit(state.);
    //emit(state.copyWith(searches: newSearchs));
  }

  void setTypedTerm(String term) {
    emit(state.copyWith(typedTerm: term));
  }
}
