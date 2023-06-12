import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_order/core/client/client.dart';
import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:meal_order/feature/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final Api _api;
  // final dio = Dio();
  // final client = RestClient(dio,baseUrl: "");

  HomeRepositoryImpl(this._api);
  @override
  Future<List<Meal>> getMeals() async {
    try {
      final List<Meal> data = await _api.client.getMeals();

      print(data.toString());

      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Section>> getSection() async {
    try {
      final List<Section> data = await _api.client.getSections();
      log(data.toString());
      print(data.toString());

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
