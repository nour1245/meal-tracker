import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  SortBy currentSortBy = SortBy.none;
  List<MealModel> meals = [];
  final TextEditingController mealNameController = TextEditingController();
  final TextEditingController mealCaloriesController = TextEditingController();
  final TextEditingController mealTimeController = TextEditingController();
  final TextEditingController mealPhotoController = TextEditingController();

  HomePageCubit() : super(HomePageStates.homePageLoading());

  void updateSortBy(SortBy newSortBy) {
    currentSortBy = newSortBy;
    _sortMeals();
    emit(HomePageSuccess(meals, currentSortBy));
  }

  void _sortMeals() {
    switch (currentSortBy) {
      case SortBy.name:
        meals.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SortBy.calories:
        meals.sort((a, b) => a.calories.compareTo(b.calories));
        break;
      case SortBy.time:
        meals.sort((a, b) => a.time.compareTo(b.time));
        break;
      case SortBy.none:
        break;
    }
  }

  getSavedMeals() async {
    final box = await Hive.openBox('mealsList');
    emit(HomePageLoading());
    try {
      final mealsList = box.get("mealsList");
      meals = (mealsList as List<dynamic>?)?.cast<MealModel>() ?? [];
      emit(HomePageSuccess(meals, currentSortBy));
    } catch (e) {
      emit(HomePageError("get meals error ${e.toString()}"));
    }
  }

  addNewMeal(context) async {
    final box = await Hive.openBox('mealsList');
    final newMeal = MealModel(
      name: mealNameController.text,
      calories: int.parse(mealCaloriesController.text),
      time: mealTimeController.text,
      photoPath: mealPhotoController.text,
    );
    // Create a new list to ensure reference changes
    List<MealModel> newMeals = List.from(meals);

    // Determine insertion index
    int newIndex =
        currentSortBy == SortBy.none
            ? newMeals.length
            : newMeals.indexWhere((meal) => _comparator(newMeal, meal) < 0);
    newIndex = newIndex == -1 ? meals.length : newIndex;

    // Insert and update
    newMeals.insert(newIndex, newMeal);
    meals = newMeals;
    await box.put('mealsList', meals);

    // Reset fields
    for (var c in [
      mealNameController,
      mealCaloriesController,
      mealTimeController,
      mealPhotoController,
    ]) {
      c.clear();
    }

    emit(HomePageSuccess(meals, currentSortBy));
    Navigator.pop(context);
  }

  // Comparator helper
  Comparator<MealModel> get _comparator {
    switch (currentSortBy) {
      case SortBy.name:
        return (a, b) => a.name.compareTo(b.name);
      case SortBy.calories:
        return (a, b) => a.calories.compareTo(b.calories);
      case SortBy.time:
        return (a, b) => a.time.compareTo(b.time);
      default:
        return (a, b) => 0;
    }
  }

  deleteMeal(int index) async {
    final box = await Hive.openBox('mealsList');
    if (index < 0 || index >= meals.length) return;

    try {
      List<MealModel> newMeals = List.from(meals);

      newMeals.removeAt(index); // Remove from list first
      meals=newMeals;
      await box.put('mealsList', meals); // Update storage

      emit(
        HomePageSuccess(meals, currentSortBy),
      ); // Emit updated state
    } catch (e) {
      emit(HomePageError("Delete error: ${e.toString()}"));
    }
  }
}

enum SortBy { none, name, calories, time }
