import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_navigation_state.dart';
part 'main_navigation_cubit.freezed.dart';

class MainNavigationCubit extends Cubit<MainNavigationState> {
  MainNavigationCubit() : super(MainNavigationState.initial());

  void setIndex(int index) {
    emit(state.copyWith(index: index));
  }
}
