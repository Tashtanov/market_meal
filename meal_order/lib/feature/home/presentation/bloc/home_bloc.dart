import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:meal_order/feature/home/domain/repository/home_repository_impl.dart';
import 'package:meal_order/feature/home/domain/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repository;
  HomeBloc(this._repository) : super(HomeState()) {
    on<HomeEvent>((event, emit) => log("Called event: $event"));
    on<GetSections>((event, emit) {
      log("message");
      (event, emit) async {
        await _repository.getSection().then((value) {
          print(value);
          log("_repository.toString()");
          emit(state.copyWith(
            loading: false,
          ));
        }).onError((error, stackTrace) {
          log("error");
          print("error: $error/n stackTrace: $stackTrace");
        });
      };
    });
    on<GetMeals>((event, emit) {
      (event, emit) async {
        emit(
          state.copyWith(
            loading: true,
          ),
        );

        await _repository.getMeals().then((value) {
          emit(state.copyWith(
            meals: value,
            loading: false,
          ));
        }).onError((error, stackTrace) {
          print("error: $error/n stackTrace: $stackTrace");
        });
      };
    });
  }
}
