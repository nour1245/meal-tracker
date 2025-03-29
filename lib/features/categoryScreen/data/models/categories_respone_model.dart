import 'package:json_annotation/json_annotation.dart';

part 'categories_respone_model.g.dart';

@JsonSerializable()
class CategoriesResponeModel {
  List<Category> categories;

  CategoriesResponeModel({required this.categories});

  factory CategoriesResponeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponeModelFromJson(json);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "idCategory")
  String categoryId;
  @JsonKey(name: "strCategory")
  String categoryName;
  @JsonKey(name: "strCategoryThumb")
  String categoryPhoto;
  @JsonKey(name: "strCategoryDescription")
  String categoryDescription;

  Category({
    required this.categoryId,
    required this.categoryName,
    required this.categoryPhoto,
    required this.categoryDescription,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
