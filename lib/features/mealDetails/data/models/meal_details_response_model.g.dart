// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealDetailsResponseModel _$MealDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    MealDetailsResponseModel(
      mealDetails: (json['meals'] as List<dynamic>?)
          ?.map((e) => Map<String, String?>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$MealDetailsResponseModelToJson(
        MealDetailsResponseModel instance) =>
    <String, dynamic>{
      'meals': instance.mealDetails,
    };
