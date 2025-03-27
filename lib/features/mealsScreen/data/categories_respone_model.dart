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
  String idCategory;
  String strCategory;
  String strCategoryThumb;
  String strCategoryDescription;

  Category({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
