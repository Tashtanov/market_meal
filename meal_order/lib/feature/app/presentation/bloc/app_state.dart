part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(false) bool loading,
    @Default(0) int currentPageIndex,
  }) = _AppState;
}