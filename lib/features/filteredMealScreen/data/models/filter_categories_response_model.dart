import 'package:json_annotation/json_annotation.dart';

part 'filter_categories_response_model.g.dart';

@JsonSerializable()
class FilterCategoriesRsponseModel {
  List<Meal> meals;

  FilterCategoriesRsponseModel({required this.meals});

  factory FilterCategoriesRsponseModel.fromJson(Map<String, dynamic> json) =>
      _$FilterCategoriesRsponseModelFromJson(json);
}

@JsonSerializable()
class Meal {
  @JsonKey(name: "strMeal")
  String mealName;
  @JsonKey(name: "strMealThumb")
  String mealPhotoLink;
  @JsonKey(name: "idMeal")
  String mealId;

  Meal({
    required this.mealName,
    required this.mealPhotoLink,
    required this.mealId,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
