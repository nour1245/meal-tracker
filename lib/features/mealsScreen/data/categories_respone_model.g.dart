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
      idCategory: json['idCategory'] as String,
      strCategory: json['strCategory'] as String,
      strCategoryThumb: json['strCategoryThumb'] as String,
      strCategoryDescription: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'idCategory': instance.idCategory,
      'strCategory': instance.strCategory,
      'strCategoryThumb': instance.strCategoryThumb,
      'strCategoryDescription': instance.strCategoryDescription,
    };
