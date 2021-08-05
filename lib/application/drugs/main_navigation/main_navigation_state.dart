part of 'main_navigation_cubit.dart';

@freezed
abstract class MainNavigationState with _$MainNavigationState {
  const factory MainNavigationState({
    required int index,
  }) = _MainNavigationState;

  factory MainNavigationState.initial() => MainNavigationState(
        index: 0,
      );
}
