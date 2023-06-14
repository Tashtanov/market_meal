import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:meal_order/feature/home/presentation/bloc/home_bloc.dart';

abstract class HomeRepository {
  Future<dynamic> getSection();
  Future<List<Meal>> getMeals();
}
