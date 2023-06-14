part of 'home_bloc.dart';

abstract class HomeEvent {}

class GetSections extends HomeEvent {
  GetSections();
}

class GetMeals extends HomeEvent {
  GetMeals();
}
