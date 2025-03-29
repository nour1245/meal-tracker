// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterCategoriesRsponseModel _$FilterCategoriesRsponseModelFromJson(
        Map<String, dynamic> json) =>
    FilterCategoriesRsponseModel(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilterCategoriesRsponseModelToJson(
        FilterCategoriesRsponseModel instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
      mealName: json['strMeal'] as String,
      mealPhotoLink: json['strMealThumb'] as String,
      mealId: json['idMeal'] as String,
    );

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
      'strMeal': instance.mealName,
      'strMealThumb': instance.mealPhotoLink,
      'idMeal': instance.mealId,
    };
