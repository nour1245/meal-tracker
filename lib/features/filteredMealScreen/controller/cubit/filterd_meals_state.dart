import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealtracker/features/filteredMealScreen/data/models/filter_categories_response_model.dart';
part 'filterd_meals_state.freezed.dart';

@freezed
class FilterdMealsState<T> with _$FilterdMealsState<T> {
  // states for filter meals by categories
  const factory FilterdMealsState.filterMealsLoading() = FilterMealsLoading;
  const factory FilterdMealsState.filterMealsSuccess(List<Meal> meals) =
      FilterMealsSuccess;
  const factory FilterdMealsState.filterMealsError(String? error) = FilterMealsError;
}
