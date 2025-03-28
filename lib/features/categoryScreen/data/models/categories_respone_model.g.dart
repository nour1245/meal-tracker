// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_respone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponeModel _$CategoriesResponeModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponeModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesResponeModelToJson(
        CategoriesResponeModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      categoryId: json['idCategory'] as String,
      categoryName: json['strCategory'] as String,
      categoryPhoto: json['strCategoryThumb'] as String,
      categoryDescription: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'idCategory': instance.categoryId,
      'strCategory': instance.categoryName,
      'strCategoryThumb': instance.categoryPhoto,
      'strCategoryDescription': instance.categoryDescription,
    };
