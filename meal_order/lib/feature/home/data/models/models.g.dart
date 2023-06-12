// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map<String, dynamic> json) => _$_Section(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "name",
      image_url: json['image_url'] as String? ?? "",
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.image_url,
    };

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      weight: json['weight'] as int? ?? 0,
      name: json['name'] as String? ?? "name",
      image_url: json['image_url'] as String? ?? "",
      description: json['description'] as String? ?? "",
      tegs:
          (json['tegs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'weight': instance.weight,
      'name': instance.name,
      'image_url': instance.image_url,
      'description': instance.description,
      'tegs': instance.tegs,
    };
