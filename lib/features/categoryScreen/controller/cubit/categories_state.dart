
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealtracker/features/categoryScreen/data/models/categories_respone_model.dart';

part 'categories_state.freezed.dart';
@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.categoriesLoading() = CategoriesLoading;
  const factory CategoriesState.categoriesSuccess(
    List<Category> categories,
  ) = CategoriesSuccess;
  const factory CategoriesState.categoriesError(String? error) = CategoriesError;

}
