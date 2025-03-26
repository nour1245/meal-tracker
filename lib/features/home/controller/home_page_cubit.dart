import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';
import 'package:uuid/uuid.dart';

enum SortBy { none, name, calories, time }

class HomePageCubit extends Cubit<HomePageStates> {
  // Controllers
  final mealNameController = TextEditingController();
  final mealCaloriesController = TextEditingController();
  final mealTimeController = TextEditingController();
  final mealPhotoController = TextEditingController();

  // State variables
  SortBy currentSortBy = SortBy.none;
  List<MealModel> meals = [];

  HomePageCubit() : super(const HomePageStates.initial()) {
    getSavedMeals();
  }

  // Sorting Methods
  void updateSortBy(SortBy newSortBy) {
    currentSortBy = newSortBy;
    _sortMeals();
    final (grouped, sorted) = _groupAndSortMeals();

    emit(HomePageStates.homePageSuccess(meals, currentSortBy, grouped, sorted));
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

  //
  (Map<DateTime, List<MealModel>>, List<DateTime>) _groupAndSortMeals() {
    Map<DateTime, List<MealModel>> groupedMeals = {};
    for (var meal in meals) {
      try {
        DateTime date = DateTime.parse(meal.time);
        DateTime dateOnly = DateTime(date.year, date.month, date.day);
        groupedMeals.putIfAbsent(dateOnly, () => []).add(meal);
      } catch (e) {
        print('Error parsing date: $e');
      }
    }

    var sortedDates =
        groupedMeals.keys.toList()..sort(
          currentSortBy == SortBy.time
              ? (a, b) => b.compareTo(a)
              : (a, b) => a.compareTo(b),
        );

    return (groupedMeals, sortedDates);
  }

  // Data Operations
  Future<void> getSavedMeals() async {
    emit(const HomePageStates.homePageLoading());
    try {
      final box = await Hive.openBox('mealsList');
      final mealsList = box.get("mealsList");
      meals = (mealsList as List<dynamic>?)?.cast<MealModel>() ?? [];
      _sortMeals();
      final (grouped, sorted) = _groupAndSortMeals();

      emit(
        HomePageStates.homePageSuccess(meals, currentSortBy, grouped, sorted),
      );
    } catch (e) {
      emit(
        HomePageStates.homePageError("Failed to load meals: ${e.toString()}"),
      );
    }
  }

  Future<void> addNewMeal(BuildContext context) async {
    try {
      final box = await Hive.openBox('mealsList');
      final newMeal = _createNewMeal();
      final updatedMeals = _insertMealSorted(newMeal);

      await box.put('mealsList', updatedMeals);
      meals = updatedMeals;
      _clearControllers();

      final (grouped, sorted) = _groupAndSortMeals();
      emit(
        HomePageStates.homePageSuccess(meals, currentSortBy, grouped, sorted),
      );
      Navigator.pop(context);
    } catch (e) {
      emit(HomePageStates.homePageError("Failed to add meal: ${e.toString()}"));
    }
  }

  Future<void> deleteMeal(String mealId) async {
    try {
      final box = await Hive.openBox('mealsList');
      final updatedMeals = List<MealModel>.from(meals)..removeWhere((meal) =>  meal.id == mealId,);

      await box.put('mealsList', updatedMeals);
      meals = updatedMeals;

      final (grouped, sorted) = _groupAndSortMeals();
      emit(
        HomePageStates.homePageSuccess(meals, currentSortBy, grouped, sorted),
      );
    } catch (e) {
      emit(
        HomePageStates.homePageError("Failed to delete meal: ${e.toString()}"),
      );
    }
  }

  // Helper Methods
  MealModel _createNewMeal() => MealModel(
    id: const Uuid().v4(),
    name: mealNameController.text,
    calories: int.parse(mealCaloriesController.text),
    time: mealTimeController.text,
    photoPath: mealPhotoController.text,
  );

  List<MealModel> _insertMealSorted(MealModel newMeal) {
    final updatedMeals = List<MealModel>.from(meals);
    final comparator = _getComparator();
    final insertIndex =
        currentSortBy == SortBy.none
            ? updatedMeals.length
            : updatedMeals.indexWhere((meal) => comparator(newMeal, meal) < 0);

    updatedMeals.insert(
      insertIndex == -1 ? updatedMeals.length : insertIndex,
      newMeal,
    );
    return updatedMeals;
  }

  Comparator<MealModel> _getComparator() {
    switch (currentSortBy) {
      case SortBy.name:
        return (a, b) => a.name.compareTo(b.name);
      case SortBy.calories:
        return (a, b) => a.calories.compareTo(b.calories);
      case SortBy.time:
        return (a, b) => a.time.compareTo(b.time);
      case SortBy.none:
        return (a, b) => 0;
    }
  }

  void _clearControllers() {
  mealNameController.clear();
  mealCaloriesController.clear();
  mealTimeController.clear();
  mealPhotoController.clear();
}

  @override
  Future<void> close() {
    for (final controller in [
      mealNameController,
      mealCaloriesController,
      mealTimeController,
      mealPhotoController,
    ]) {
      controller.dispose();
    }
    return super.close();
  }
}
