// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMealsResponseModel _$SearchMealsResponseModelFromJson(
        Map<String, dynamic> json) =>
    SearchMealsResponseModel(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Map<String, String?>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$SearchMealsResponseModelToJson(
        SearchMealsResponseModel instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
