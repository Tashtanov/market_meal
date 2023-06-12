import 'package:injectable/injectable.dart';
import 'package:meal_order/feature/home/data/models/models.dart';
import 'package:meal_order/feature/home/domain/repository/home_repository.dart';

@singleton
class HomeUseCase {
  final HomeRepository homeRepository;
  Future<List<Section>> getSections() async => await homeRepository.getSection();
  Future<List<Meal>> getMeals() async => await homeRepository.getMeals();

  HomeUseCase(this.homeRepository);
}
