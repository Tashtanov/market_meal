import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_order/core/client/client.dart';
import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:meal_order/feature/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final RestClient _client;
  // final client = RestClient(Dio());
  HomeRepositoryImpl(this._client);

  @override
  Future<dynamic> getSection() async {
    // final dio = Dio(); // Provide a dio instance
    // dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
    // final client = RestClient(dio);
    try {
      print("Api_sections");
      final data = await _client.getSections();

      print(data.toString());

      return data;
    } catch (e) {
      print("implemention");
      throw Exception("Failed $e");
    }
  }

  @override
  Future<List<Meal>> getMeals() async {
    try {
      print("Api_getmeals");
      final List<Meal> data = await _client.getMeals();

      print(data.toString());

      return data;
    } catch (e) {
      print("implemention");
      rethrow;
    }
  }
}
