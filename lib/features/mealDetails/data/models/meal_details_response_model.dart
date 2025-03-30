import 'package:json_annotation/json_annotation.dart';

part 'meal_details_response_model.g.dart';

@JsonSerializable()
class MealDetailsResponseModel {
  @JsonKey(name: "meals")
  List<Map<String, String?>>? mealDetails;

  MealDetailsResponseModel({required this.mealDetails});

  factory MealDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MealDetailsResponseModelFromJson(json);
}
