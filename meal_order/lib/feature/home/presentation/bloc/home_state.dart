part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
   factory HomeState({

    @Default(false) bool loading,
    @Default([]) List<Section> sections,
    @Default([]) List<Meal> meals,

   })=_HomeState;
}
