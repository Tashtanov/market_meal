import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    @Default(0) int id,
    @Default("name") String name,
    @Default("") String image_url,
  }) = _Section;
  factory Section.fromJson(Map<String, Object?> json) => _$SectionFromJson(json);
}

@freezed
class Meal with _$Meal {
  const factory Meal({
    @Default(0) int id,
    @Default(0) int price,
    @Default(0) int weight,
    @Default("name") String name,
    @Default("") String image_url,
    @Default("") String description,
    @Default([]) List<String> tegs,
  }) = _Meal;
  factory Meal.fromJson(Map<String, Object?> json) => _$MealFromJson(json);
}
