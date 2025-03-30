import 'package:freezed_annotation/freezed_annotation.dart';
part 'meal_details_state.freezed.dart';
@freezed
class MealDetailsState<T> with _$MealDetailsState<T> {
  const factory MealDetailsState.mealLoading() = MealLoading;
  const factory MealDetailsState.mealSuccess(
    Map<String, String?> mealDetails,
  ) = MealSuccess;
  const factory MealDetailsState.mealError(String error) = MealError;
}
