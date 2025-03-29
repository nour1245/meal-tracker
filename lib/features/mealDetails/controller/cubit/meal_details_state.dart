import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealtracker/features/mealDetails/data/models/meal_details_response_model.dart';
part 'meal_details_state.freezed.dart';
@freezed
class MealDetailsState<T> with _$MealDetailsState<T> {
  const factory MealDetailsState.mealLoading() = MealLoading;
  const factory MealDetailsState.mealSuccess(
    Meal mealDetails,
  ) = MealSuccess;
  const factory MealDetailsState.mealError(String error) = MealError;
}
