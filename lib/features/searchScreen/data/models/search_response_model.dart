import 'package:json_annotation/json_annotation.dart';

part 'search_response_model.g.dart';

@JsonSerializable()
class SearchMealsResponseModel {
  @JsonKey(name: "meals")
  List<Map<String, String?>>? meals;

  SearchMealsResponseModel({required this.meals});

  factory SearchMealsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMealsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchMealsResponseModelToJson(this);
}
