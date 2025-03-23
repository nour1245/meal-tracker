import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mealtracker/features/home/controller/home_page_states.dart';
import 'package:mealtracker/features/home/data/meal_model.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  final listKey = GlobalKey<AnimatedListState>();

   List<MealModel> meals =[];
  final TextEditingController mealNameController = TextEditingController();
  final TextEditingController mealCaloriesController = TextEditingController();
  final TextEditingController mealTimeController = TextEditingController();
  final TextEditingController mealPhotoController = TextEditingController();

  HomePageCubit() : super(HomePageStates.homePageLoading());

  getSavedMeals() async {
    final box = await Hive.openBox('mealsList');
    emit(HomePageLoading());
    try {
      final  mealsList = box.get("mealsList");
       meals = (mealsList as List<dynamic>?)?.cast<MealModel>() ?? [];
      emit(HomePageSuccess(meals));
    } catch (e) {
      emit(HomePageError("get meals error ${e.toString()}"));
    }
  }

  addNewMeal(context) async {
    final box = await Hive.openBox('mealsList');

    // Add the new meal to the list
    final newMeal = MealModel(
      name: mealNameController.text,
      calories: int.parse(mealCaloriesController.text),
      time: mealTimeController.text,
      photoPath: mealPhotoController.text,
    );
    final newIndex = meals.length;
    meals.add(newMeal);
    await box.put('mealsList', meals);
    // Notify AnimatedList to insert the new item
    listKey.currentState?.insertItem(newIndex);
    // Clear controllers
    mealNameController.clear();
    mealCaloriesController.clear();
    mealTimeController.clear();
    mealPhotoController.clear();
    // Close the bottom sheet
    Navigator.pop(context);
  }
}
