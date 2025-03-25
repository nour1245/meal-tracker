import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealtracker/features/home/controller/home_page_cubit.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

part 'home_page_states.freezed.dart';

@freezed
class HomePageStates with _$HomePageStates {
  const factory HomePageStates.initial() = _Initial;
  const factory HomePageStates.homePageLoading() = HomePageLoading;
  const factory HomePageStates.homePageSuccess(
    List<MealModel> meals,
    SortBy sortBy,
    Map<DateTime, List<MealModel>> groupedMeals,
    List<DateTime> sortedDates,
  ) = HomePageSuccess;
  const factory HomePageStates.homePageError(String message) = HomePageError;
}
