import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:retrofit/retrofit.dart';

import '../helpers/interceptop.dart';

part 'client.g.dart';

@singleton
class Api {
  late RestClient client;

  void initClient({String? accessToken}) {
    final Dio dio = Dio();

    dio.interceptors.add(AppInterceptors(dio));
    client = RestClient(dio);
  }
}

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET("/058729bd-1402-4578-88de-265481fd7d54")
  Future<List<Section>> getSections();
  @GET("/c7a508f2-a904-498a-8539-09d96785446e")
  Future<List<Meal>> getMeals();
}
