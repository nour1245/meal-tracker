// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealDetailsResponseModel _$MealDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    MealDetailsResponseModel(
      mealDetails: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealDetailsResponseModelToJson(
        MealDetailsResponseModel instance) =>
    <String, dynamic>{
      'meals': instance.mealDetails,
    };

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
      json['idMeal'] as String?,
      json['strMeal'] as String?,
      json['strMealThumb'] as String?,
      json['strArea'] as String?,
      json['strTags'] as String?,
      json['strInstructions'] as String?,
      json['strIngredient1'] as String?,
      json['strIngredient2'] as String?,
      json['strIngredient3'] as String?,
      json['strIngredient4'] as String?,
      json['strIngredient5'] as String?,
      json['strIngredient6'] as String?,
      json['strIngredient7'] as String?,
      json['strIngredient8'] as String?,
      json['strIngredient9'] as String?,
      json['strIngredient10'] as String?,
      json['strIngredient11'] as String?,
      json['strIngredient12'] as String?,
      json['strIngredient13'] as String?,
      json['strIngredient14'] as String?,
      json['strIngredient15'] as String?,
      json['strIngredient16'] as String?,
      json['strIngredient17'] as String?,
      json['strIngredient18'] as String?,
      json['strIngredient19'] as String?,
      json['strIngredient20'] as String?,
      json['strMeasure1'] as String?,
      json['strMeasure2'] as String?,
      json['strMeasure3'] as String?,
      json['strMeasure4'] as String?,
      json['strMeasure5'] as String?,
      json['strMeasure6'] as String?,
      json['strMeasure7'] as String?,
      json['strMeasure8'] as String?,
      json['strMeasure9'] as String?,
      json['strMeasure10'] as String?,
      json['strMeasure11'] as String?,
      json['strMeasure12'] as String?,
      json['strMeasure13'] as String?,
      json['strMeasure14'] as String?,
      json['strMeasure15'] as String?,
      json['strMeasure16'] as String?,
      json['strMeasure17'] as String?,
      json['strMeasure18'] as String?,
      json['strMeasure19'] as String?,
      json['strMeasure20'] as String?,
    );

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
      'idMeal': instance.mealId,
      'strMeal': instance.mealName,
      'strMealThumb': instance.mealPhoto,
      'strArea': instance.mealArea,
      'strTags': instance.tags,
      'strInstructions': instance.instructions,
      'strIngredient1': instance.ingredient1,
      'strIngredient2': instance.ingredient2,
      'strIngredient3': instance.ingredient3,
      'strIngredient4': instance.ingredient4,
      'strIngredient5': instance.ingredient5,
      'strIngredient6': instance.ingredient6,
      'strIngredient7': instance.ingredient7,
      'strIngredient8': instance.ingredient8,
      'strIngredient9': instance.ingredient9,
      'strIngredient10': instance.ingredient10,
      'strIngredient11': instance.ingredient11,
      'strIngredient12': instance.ingredient12,
      'strIngredient13': instance.ingredient13,
      'strIngredient14': instance.ingredient14,
      'strIngredient15': instance.ingredient15,
      'strIngredient16': instance.ingredient16,
      'strIngredient17': instance.ingredient17,
      'strIngredient18': instance.ingredient18,
      'strIngredient19': instance.ingredient19,
      'strIngredient20': instance.ingredient20,
      'strMeasure1': instance.measure1,
      'strMeasure2': instance.measure2,
      'strMeasure3': instance.measure3,
      'strMeasure4': instance.measure4,
      'strMeasure5': instance.measure5,
      'strMeasure6': instance.measure6,
      'strMeasure7': instance.measure7,
      'strMeasure8': instance.measure8,
      'strMeasure9': instance.measure9,
      'strMeasure10': instance.measure10,
      'strMeasure11': instance.measure11,
      'strMeasure12': instance.measure12,
      'strMeasure13': instance.measure13,
      'strMeasure14': instance.measure14,
      'strMeasure15': instance.measure15,
      'strMeasure16': instance.measure16,
      'strMeasure17': instance.measure17,
      'strMeasure18': instance.measure18,
      'strMeasure19': instance.measure19,
      'strMeasure20': instance.measure20,
    };
