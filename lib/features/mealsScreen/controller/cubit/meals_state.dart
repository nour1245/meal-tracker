
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealtracker/features/mealsScreen/data/categories_respone_model.dart';

part 'meals_state.freezed.dart';
@freezed
class MealsState<T> with _$MealsState<T> {
  const factory MealsState.categoriesLoading() = CategoriesLoading;
  const factory MealsState.categoriesSuccess(
    List<Category> categories,
  ) = CategoriesSuccess;
  const factory MealsState.categoriesError(String? error) = CategoriesError;
}
